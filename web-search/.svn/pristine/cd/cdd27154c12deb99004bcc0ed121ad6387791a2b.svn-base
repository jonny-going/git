package priv.gzz.web.search.dao;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;
import org.apache.hadoop.util.Progressable;

import priv.gzz.web.search.bean.Index1;
import priv.gzz.web.search.bean.Index1Item;
import priv.gzz.web.search.bean.Index2;
import priv.gzz.web.search.bean.Paging;
import priv.gzz.web.search.bean.RankItem;

public class HdfsDao {
	/*
	 * 二级索引文件
	 */
	private static final String INDEX2_ROOT = "hdfs://192.168.0.40:9000/user/gong/index/index2/part-r-00000";
	/*
	 * 一级索引文件目录
	 */
	private static final String INDEX1_ROOT = "hdfs://192.168.0.40:9000/user/gong/index/index1/";

	public static Paging<Long> findDidByKeywords(Set<String> keywords, int size, int page) {
		Paging<Long> paging = new Paging<Long>();
		try {
			List<Long> didList = new ArrayList<Long>();
			List<Index2> index2List = findInIndex2(keywords);
			List<Index1> index1List = findInIndex1(index2List);
			Map<Long, RankItem> rankMap = new HashMap<Long, RankItem>();
			for (Index1 index1 : index1List) {
				for (Index1Item item : index1.getValue()) {
					Long did = Long.valueOf(item.getDid());
					if (rankMap.containsKey(did)) {
						RankItem exists = rankMap.get(did);
						exists.setCount(exists.getCount() + item.getCount());
					} else {
						RankItem rankItem = new RankItem();
						rankItem.setDid(did);
						rankItem.setCount(item.getCount());
						rankMap.put(did, rankItem);
					}
				}
			}
			RankItem[] toSortedArray = new RankItem[rankMap.values().size()];
			rankMap.values().toArray(toSortedArray);
			Arrays.sort(toSortedArray, new Comparator<RankItem>() {
				public int compare(RankItem item1, RankItem item2) {
					// 倒序排
					return item2.getCount() - item1.getCount();
				}
			});
			int totalPage = 0;
			int totalCount = toSortedArray.length;
			if (toSortedArray.length % size == 0) {
				totalPage = totalCount / size;
			} else {
				totalPage = totalCount / size + 1;
			}
			int start = (page - 1) * size, end = size * page;
			if (start < 0) {
				start = 0;
			}
			if (end > totalCount) {
				end = totalCount - 1;
			}
			for (int i = start; i <= end; i++) {
				didList.add(toSortedArray[i].getDid());
			}
			paging.setResult(didList);
			paging.setTotalPage(totalPage);
			paging.setMaxSize(size);
			paging.setCurrentPage(page);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return paging;
	}

	private static List<Index2> findInIndex2(Set<String> keywords) throws IOException {
		List<Index2> index2List = new ArrayList<Index2>();
		BufferedReader buff = null;
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(INDEX2_ROOT), conf);
		FSDataInputStream hdfsInStream = fs.open(new Path(INDEX2_ROOT));
		buff = new BufferedReader(new InputStreamReader(hdfsInStream));
		String line = null;
		while ((line = buff.readLine()) != null) {
			String[] split = line.split("\\t|\\s");
			if (split.length != 2) {
				continue;
			}
			if (keywords.contains(split[0].trim())) {
				try {
					index2List.add(new Index2(line));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		buff.close();
		hdfsInStream.close();
		fs.close();
		return index2List;
	}

	private static List<Index1> findInIndex1(List<Index2> index2List) throws IOException {
		List<Index1> index1List = new ArrayList<Index1>();
		Set<String> files = new HashSet<String>();
		Set<String> keywords = new HashSet<String>();
		for (Index2 index : index2List) {
			files.add(index.getValue().getFileName());
			keywords.add(index.getKeyword());
		}
		Configuration conf = new Configuration();
		for (String fileName : files) {
			BufferedReader buff = null;
			FileSystem fs = FileSystem.get(URI.create(INDEX1_ROOT + fileName), conf);
			FSDataInputStream hdfsInStream = fs.open(new Path(INDEX1_ROOT + fileName));
			buff = new BufferedReader(new InputStreamReader(hdfsInStream));
			String line = null;
			while ((line = buff.readLine()) != null) {
				String[] split = line.split("\\t|\\s");
				if (split.length != 2) {
					continue;
				}
				if (keywords.contains(split[0].trim())) {
					try {
						index1List.add(new Index1(line));
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			buff.close();
			hdfsInStream.close();
			fs.close();
		}
		return index1List;
	}

	/**
	 * 上传文件到HDFS上去
	 */
	public static void uploadToHdfs() throws FileNotFoundException, IOException {
		String localSrc = "e://qq.txt";
		String dst = "hdfs://192.168.0.40:9000/home/gong/qq.txt";
		InputStream in = new BufferedInputStream(new FileInputStream(localSrc));
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		OutputStream out = fs.create(new Path(dst), new Progressable() {
			public void progress() {
				System.out.print(".");
			}
		});
		IOUtils.copyBytes(in, out, 4096, true);
	}

	/**
	 * 从HDFS上读取文件
	 */
	public static void readFromHdfs() throws FileNotFoundException, IOException {
		String dst = "hdfs://192.168.0.40:9000/home/gong/qq.txt";
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		FSDataInputStream hdfsInStream = fs.open(new Path(dst));

		OutputStream out = new FileOutputStream("e:/qq-hdfs.txt");
		byte[] ioBuffer = new byte[1024];
		int readLen = hdfsInStream.read(ioBuffer);

		while (-1 != readLen) {
			out.write(ioBuffer, 0, readLen);
			readLen = hdfsInStream.read(ioBuffer);
		}
		out.close();
		hdfsInStream.close();
		fs.close();
	}

	/**
	 * 以append方式将内容添加到HDFS上文件的末尾;注意：文件更新，需要在hdfs-site.xml中添<property><name>dfs.
	 * append.support</name><value>true</value></property>
	 */
	public static void appendToHdfs() throws FileNotFoundException, IOException {
		String dst = "hdfs://192.168.0.40:9000/user/zhangzk/qq.txt";
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		FSDataOutputStream out = fs.append(new Path(dst));

		int readLen = "zhangzk add by hdfs java api".getBytes().length;

		while (-1 != readLen) {
			out.write("zhangzk add by hdfs java api".getBytes(), 0, readLen);
		}
		out.close();
		fs.close();
	}

	/** 从HDFS上删除文件 */
	public static void deleteFromHdfs() throws FileNotFoundException, IOException {
		String dst = "hdfs://192.168.0.40:9000/user/zhangzk/qq-bak.txt";
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		fs.deleteOnExit(new Path(dst));
		fs.close();
	}

	/** 遍历HDFS上的文件和目录 */
	public static void getDirectoryFromHdfs() throws FileNotFoundException, IOException {
		String dst = "hdfs://192.168.0.40:9000/user/gong/index/index2";
		Configuration conf = new Configuration();
		FileSystem fs = FileSystem.get(URI.create(dst), conf);
		FileStatus fileList[] = fs.listStatus(new Path(dst));
		int size = fileList.length;
		for (int i = 0; i < size; i++) {
			System.out.println("name:" + fileList[i].getPath().getName() + "/t/tsize:" + fileList[i].getLen());
		}
		fs.close();
	}

	public static void main(String[] args) {
		try {
			// readFromHdfs();
			// uploadToHdfs();
			// getDirectoryFromHdfs();
			Set<String> keyword = new HashSet<String>();
			keyword.add("饮水思源");
			keyword.add("饮水");
			keyword.add("思源");
			System.out.println(findDidByKeywords(keyword, 10, 1).getResult());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
