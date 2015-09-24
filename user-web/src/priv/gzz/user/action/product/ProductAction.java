package priv.gzz.user.action.product;

import priv.gzz.user.bo.Product;

import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {
	private static final long serialVersionUID = 5204625733652595051L;

	private Product product;

	@Override
	public String execute() throws Exception {
		return "main";
	}

	public String view() {
		System.out.println("view product.");
		return "view";
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}