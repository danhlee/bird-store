package com.jackssparrowaviary.store;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 * Servlet implementation class Controller_Store
 */
@WebServlet("/Controller_Store")
public class Controller_Store extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDao productDao;
    
    // initialize datasource
    @Resource(name="jdbc/bird_store")
    private DataSource dataSource;
	
    @Override
    public void init() throws ServletException {
    	super.init();
    	
    	try {
    		productDao = new ProductDao(dataSource);
    	}
    	catch (Exception e) {
    		throw new ServletException(e);
    	}
    }

    // doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String myCommand = request.getParameter("command");
			
			if (myCommand == null) {
				myCommand = "LIST_BY_NAME";
			}
			
			switch (myCommand) {
			case "LIST_BY_NAME":
				listProductsByName(request, response);
				break;
			case "LIST_BY_PRICE":
				listProductsByPrice(request, response);
				break;
			case "ADD_TO_CART":
				addToCart(request, response);
				break;
			default:
				listProductsByName(request, response);
			}
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	}


	private void addToCart(HttpServletRequest request, HttpServletResponse response) {
		// check to see if cart already exists
		Cart shoppingCart;
		Integer productId = Integer.parseInt(request.getParameter("product_id"));
		String productName = request.getParameter("product_name");
		Double productPrice = Double.parseDouble(request.getParameter("product_price"));
		Integer productQuantity = Integer.parseInt(request.getParameter("product_quantity"));
		Product tempProduct = new Product(productId, productName, productPrice, productQuantity);
		// TODO purchase quantity
		// int purchaseQuantity = 1;
		
		HttpSession session = request.getSession();
	
		shoppingCart = (Cart) session.getAttribute("shopping_cart");
		
		
		if(shoppingCart == null) {
			// create a cart object, that contains a HashMap as a data field
			shoppingCart = new Cart();
			session.setAttribute("shopping_cart", shoppingCart.getCartItems());
			session.setMaxInactiveInterval(60*60);
		}
		
		// add item to session object
		shoppingCart.addToCart(tempProduct);
		
		session.setAttribute("shopping_cart", shoppingCart.getCartItems());
		
	}


	private void listProductsByName(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Product> productList = productDao.getProductsByName();
		
		// set a key value pair in request object's list
		request.setAttribute("product_list", productList);
		
		// get dispatcher from request object and specify destination page
		RequestDispatcher dispatcher = request.getRequestDispatcher("/products_page.jsp");
		dispatcher.forward(request, response);
	}
	private void listProductsByPrice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Product> productList = productDao.getProductsByPrice();
		
		// set a key value pair in request object's list
		request.setAttribute("product_list", productList);
		
		// get dispatcher from request object and specify destination page
		RequestDispatcher dispatcher = request.getRequestDispatcher("/products_page.jsp");
		dispatcher.forward(request, response);
	}
	
	
	
	// doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}















