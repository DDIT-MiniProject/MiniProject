package com.burger.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.burger.controller.action.Action;
import com.burger.dao.ProductDAO;
import com.burger.dao.iBatis.ProductDAO_iBatis;
import com.burger.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminProductInsertAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "adminProductInsertForm.do";

		HttpSession session = request.getSession();
		int sizeLimit = 5 * 1024 * 1024;
		String savePath = "images";
		ServletContext context = session.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);

		MultipartRequest multi = new MultipartRequest(request, uploadFilePath,
				sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	
		ProductVO productVO = new ProductVO();
		productVO.setKind(multi.getParameter("kind"));
		productVO.setName(multi.getParameter("name"));
		productVO.setPrice2(Integer.parseInt(multi.getParameter("price2")));
		productVO.setContent(multi.getParameter("content"));
		productVO.setImage(multi.getFilesystemName("image"));

	
		ProductDAO productDAO = ProductDAO_iBatis.getInstance();
		try {
			productDAO.insertProduct(productVO);
			url="adminProductList.do";
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

	public String kindCheck(String kind) {
		String result = "0";

		if (kind.equals("스페셜오퍼")) {
              result="12";
		}
		if (kind.equals("딜리버리팩")) {
              result="13";
		}if(kind.equals("세트메뉴")){
			  result="14";
		}if(kind.equals("버거")){
			  result="15";
		}if(kind.equals("사이드")){
			  result="16";
		}if(kind.equals("드링크")){
			 result="17";
		}
		return result;
	}

}
