package priv.gzz.index;

import java.io.IOException;
import java.io.StringReader;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.FileSplit;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.MultipleOutputs;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.wltea.analyzer.lucene.IKAnalyzer;

import priv.gzz.index.bean.MultiInfo;
import priv.gzz.index.util.Constant;

public class Index1Builder {
	public static class WordMap extends Mapper<LongWritable, Text, Text, Text> {

		public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
			String line = value.toString();
			IKAnalyzer analyzer = new IKAnalyzer();
			String fileName = ((FileSplit) context.getInputSplit()).getPath().getName();
			try {
				TokenStream tokenStream = analyzer.tokenStream("content", new StringReader(line));
				tokenStream.addAttribute(CharTermAttribute.class);
				tokenStream.reset();
				while (tokenStream.incrementToken()) {
					CharTermAttribute charTermAttribute = (CharTermAttribute) tokenStream
							.getAttribute(CharTermAttribute.class);
					StringBuilder singleInfo = new StringBuilder();
					singleInfo.append(fileName).append(Constant.INFO_SEPARATOR_INNER);
					singleInfo.append(1).append(Constant.INFO_SEPARATOR_INNER);
					singleInfo.append(key.get());
					context.write(new Text(charTermAttribute.toString()), new Text(singleInfo.toString()));
				}
				tokenStream.end();
				tokenStream.close();
				analyzer.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static class WordReduce extends Reducer<Text, Text, Text, Text> {
		/**
		 * 设置多个文件输出
		 * */
		@SuppressWarnings("rawtypes")
		private MultipleOutputs mos;

		@SuppressWarnings({ "unchecked", "rawtypes" })
		@Override
		protected void setup(Context context) throws IOException, InterruptedException {
			mos = new MultipleOutputs(context);// 初始化mos
		}

		@Override
		protected void cleanup(Context context) throws IOException, InterruptedException {
			mos.close();// 释放资源
		}

		@SuppressWarnings("unchecked")
		public void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
			Map<String, MultiInfo> infoMap = new HashMap<String, MultiInfo>();
			for (Text val : values) {
				try {
					MultiInfo info = new MultiInfo(val.toString());
					if (infoMap.containsKey(info.getDid())) {
						MultiInfo exists = infoMap.get(info.getDid());
						exists.setCount(exists.getCount() + info.getCount());
						exists.appendOffset(info.getOffset());
					} else {
						infoMap.put(info.getDid(), info);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			StringBuilder sumInfo = new StringBuilder();
			for (Map.Entry<String, MultiInfo> kv : infoMap.entrySet()) {
				sumInfo.append(kv.getValue().toString()).append(Constant.INFO_SEPARATOR_OUTER);
			}
			sumInfo.deleteCharAt(sumInfo.length() - 1);
			// context.write(key, new Text(sumInfo.toString()));
			int index = Math.abs(key.toString().hashCode() % 10);
			String fileName = "gong" + MessageFormat.format("{0,number,000}", index);
			mos.write(fileName, key, new Text(sumInfo.toString()));
		}
	}

	public static void main(String[] args) throws Exception {
		long start = System.currentTimeMillis();
		Configuration conf = new Configuration();

		Job job = new Job(conf, "index1");
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);

		job.setMapperClass(WordMap.class);
		job.setReducerClass(WordReduce.class);
		// job.setPartitionerClass(HashPartitioner.class);

		job.setInputFormatClass(TextInputFormat.class);
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);
		for (int i = 0; i < 10; i++) {
			String prefix = MessageFormat.format("{0,number,000}", i);
			MultipleOutputs.addNamedOutput(job, "gong" + prefix, TextOutputFormat.class, Text.class, Text.class);
		}
		// job.setOutputFormatClass(TextOutputFormat.class);

		FileInputFormat.addInputPath(job, new Path(args[0]));
		FileOutputFormat.setOutputPath(job, new Path(args[1]));

		job.waitForCompletion(true);
		System.out.println("Build index1 completed. Cost " + (System.currentTimeMillis() - start) / 60000 + "ms");
	}
}