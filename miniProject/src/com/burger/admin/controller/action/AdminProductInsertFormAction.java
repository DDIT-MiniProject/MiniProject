package com.burger.admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.burger.controller.action.Action;

public class AdminProductInsertFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url="product/productInsert.jsp";
		
		String kindList[] = { "����ȿ���", "����������", "��Ʈ�޴�", "����",
		        "���̵�", "�帵ũ" };    
		    request.setAttribute("kindList", kindList);
		    
		return url;
	}

}
