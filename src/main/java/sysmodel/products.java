package sysmodel;

public class products {
	   private int product_id;
	    private String product_name;
	    private float price;
	    private int quantity;
	    
	    public products() {
	        // Default constructor
	    }

		public products(int product_id, String product_name, float price, int quantity) {
			this.product_id = product_id;
			this.product_name = product_name;
			this.price = price;
			this.quantity = quantity;
		}

		public int getProduct_id() {
			return product_id;
		}

		public void setProduct_id(int product_id) {
			this.product_id = product_id;
		}

		public String getProduct_name() {
			return product_name;
		}

		public void setProduct_name(String product_name) {
			this.product_name = product_name;
		}

		public float getPrice() {
			return price;
		}

		public void setPrice(float price) {
			this.price = price;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		
	    
	    
}
