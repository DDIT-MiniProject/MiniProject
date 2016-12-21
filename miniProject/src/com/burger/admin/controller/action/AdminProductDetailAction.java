package com.burger.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.burger.controller.action.Action;

public class AdminProductDetailAction implements Action{

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		 String url="product/ProductDetail.jsp";
		
		return url;
	}
         

}
