package priv.gzz.patcher.web.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import priv.gzz.patcher.get.Fetcher;

import com.opensymphony.xwork2.ActionSupport;

public class ScanModifiedAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Logger log = Logger.getLogger(ScanModifiedAction.class);

	private String path;

	private Fetcher fetcher = new Fetcher();

	private List<String> fileList;

	public String execute() throws Exception {
		log.info("HelloWorldAction execute.");
		List<File> list = fetcher.scanModified(new File(path));
		fileList = new ArrayList<String>();
		for (File file : list) {
			fileList.add(file.getAbsolutePath());
		}
		return "success";
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public List<String> getFileList() {
		return fileList;
	}

	public void setFileList(List<String> fileList) {
		this.fileList = fileList;
	}
}