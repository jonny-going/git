package priv.gzz.crawl.bean;

public class BBSContent {
	private Long DID = 0L;
	private String url = "";
	private String time = "";
	private String title = "";
	private String author = "";
	private String content = "";
	private String hot = "0";
	private String snapshot = "";

	public String getSnapshot() {
		return snapshot;
	}

	public void setSnapshot(String snapshot) {
		this.snapshot = snapshot;
	}

	public String toJson() {
		StringBuilder json = new StringBuilder();
		json.append("{");
		json.append("did:").append(DID).append(",");
		json.append("url:\"").append(url).append("\",");
		json.append("time:\"").append(time).append("\",");
		json.append("title:\"").append(title).append("\",");
		json.append("author:\"").append(author).append("\",");
		json.append("content:\"").append(content).append("\",");
		json.append("hot:").append(hot);
		json.append("}");
		return json.toString();
	}

	public Long getDID() {
		return DID;
	}

	public void setDID(Long dID) {
		DID = dID;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getHot() {
		return hot;
	}

	public void setHot(String hot) {
		this.hot = hot;
	}
}
