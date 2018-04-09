package com.jackssparrowaviary.store;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	List<Product> cartItems;
	
	public Cart() {
		this.cartItems = new ArrayList<>();
	}
	
	public Cart(List<Product> cartItems) {
		this.cartItems = cartItems;
	}

	public List<Product> getCartItems() {
		return cartItems;
	}
	
	
	public void addToCart(Product product) {
		cartItems.add(product);
	}
	
	
}
