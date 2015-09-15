package priv.gzz.user.bean;

public class Product {
	private String productName;
	private String productCode;

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("Product[productName=").append(productName).append(",");
		sb.append("productCode=").append(productCode).append("]");
		return sb.toString();
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

}
