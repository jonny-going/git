package priv.gzz.user.bean;

public class User {
	private int userId;
	private String userName;
	private String password;

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("User[userId=").append(userId).append(",");
		sb.append("userName=").append(userName).append(",");
		sb.append("password=").append(password).append("]");
		return sb.toString();
	}

	public int getUserId() {
		return userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
