package com.burger.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.burger.controller.action.Action;
import com.burger.dao.OrderDAO;
import com.burger.dao.iBatis.OrderDAO_iBatis;

public class AdminOrderListAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "order/OrderList.jsp";
		
		String name =""
		
		OrderDAO orderDAO = OrderDAO_iBatis.getInstance();
		
		
		orderDAO.listOrder(member_name);
		
		
		return url;
	}

}
