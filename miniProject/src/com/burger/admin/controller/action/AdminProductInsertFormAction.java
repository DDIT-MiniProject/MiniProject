package com.burger.admin.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.burger.controller.action.Action;
import com.burger.dto.KindVO;

public class AdminProductInsertFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url="product/productInsert.jsp";
		/*KindVO kindVO =null;
        kindVO.setKind("����ȿ���");
        System.out.println(kindVO.getKind());
        kindVO.setKindNum("12");
        ArrayList<KindVO> list = null;
        list.add(kindVO);
        kindVO.setKind("����������");
        kindVO.setKindNum("13");
        list.add(kindVO);
        kindVO.setKind("��Ʈ�޴�");
        kindVO.setKindNum("14");
        list.add(kindVO);
        kindVO.setKind("����");
        kindVO.setKindNum("15");
        list.add(kindVO);
        kindVO.setKind("���̵�");
        kindVO.setKindNum("16");
        list.add(kindVO);
        kindVO.setKind("�帵ũ");
        kindVO.setKindNum("17");
        list.add(kindVO);*/
        
        
		
		
		String kindList[] = { "스페셜오퍼", "딜리버리팩", "세트메뉴", "버거",
		        "사이드", "드링크" };    
		    request.setAttribute("kindList", kindList);
		    
		return url;
	}

}
