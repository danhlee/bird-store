package com.jackssparrowaviary.store;

public class Product {
	private int id;
	private String productName;
	private double price;
	private int quantity;
	
	public Product(String productName, double price, int quantity) {
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}
	
	public Product(int id, String productName, double price, int quantity) {
		this.id = id;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public boolean equals(Object obj) {
		boolean isEqual = false;
		
		if (obj instanceof Product) {
			isEqual = this.id == ((Product) obj).getId();
		}
		
		return isEqual;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", price=" + price + ", quantity=" + quantity
				+ "]";
	}

	
}
