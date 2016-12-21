package com.burger.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.burger.controller.action.Action;
import com.burger.dao.ProductDAO;
import com.burger.dao.iBatis.ProductDAO_iBatis;
import com.burger.dto.ProductVO;

public class AdminProductSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		 String url ="product/ProductSearch.jsp";
		
		 String searchID = request.getParameter("searchID");
		 String tpage= request.getParameter("tpage");
		 String msg="";
		 
		 if (searchID == null) {
			 searchID = "";
			}
			if (tpage == null) {
				tpage = "1"; // 현재 페이지 (default 1)
			} else if (tpage.equals("")) {
				tpage = "1";
			}
			request.setAttribute("key", searchID);
			request.setAttribute("tpage", tpage);
		 
		 ProductDAO productDAO = ProductDAO_iBatis.getInstance();
		 
		 ArrayList<ProductVO> productList =null;
		 String paging=null;
		 
		 try {
			productList =productDAO.listProduct(Integer.parseInt(tpage), searchID);
			paging = productDAO.pageNumber(Integer.parseInt(tpage),searchID);
		 } catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 request.setAttribute("productList", productList);
		 int n=productList.size();
		 request.setAttribute("productListSize", n);
		 request.setAttribute("paging", paging);
		 
		 
		 
		 return url;
	}

}
