package priv.gzz.user.po;

public class User {
	private String userId;
	private String userName;
	private String password;
	private String nickName;

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("User[userId=").append(userId).append(",");
		sb.append("userName=").append(userName).append(",");
		sb.append("password=").append(password).append(",");
		sb.append("nickName=").append(nickName).append("]");
		return sb.toString();
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
