package priv.gzz.patcher.web.action;

import java.io.File;

import org.apache.log4j.Logger;

import priv.gzz.patcher.get.Fetcher;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Logger log = Logger.getLogger(HelloWorldAction.class);

	private String name;

	private Fetcher fetcher = new Fetcher();

	public String execute() throws Exception {
		log.info("HelloWorldAction execute.");
		log.info(fetcher.scanModified(new File(name)));
		return "success";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}