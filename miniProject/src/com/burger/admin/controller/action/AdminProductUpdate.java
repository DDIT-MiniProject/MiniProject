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

public class AdminProductUpdate implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "adminProductList.do";

		HttpSession session = request.getSession();

		int sizeLimit = 5 * 1024 * 1024;
		String savePath = "product_images";
		ServletContext context = session.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);

		MultipartRequest multi = new MultipartRequest(request, // 1. �슂泥� 媛앹껜
				uploadFilePath, // 2. �뾽濡쒕뱶�맆 �뙆�씪�씠 ���옣�맆 �뙆�씪 寃쎈줈紐�
				sizeLimit, // 3. �뾽濡쒕뱶�맆 �뙆�씪�쓽 理쒕� �겕湲�(5Mb)
				"UTF-8", // 4. �씤肄붾뵫 ���엯 吏��젙
				new DefaultFileRenamePolicy() // 5. �뜮�뼱�벐湲곕�� 諛⑹� �쐞�븳 遺�遺�
		); // �씠 �떆�젏�쓣 湲고빐 �뙆�씪�� �씠誘� ���옣�씠 �릺�뿀�떎

		ProductVO productVO = new ProductVO();
		productVO.setPseq(Integer.parseInt(multi.getParameter("pseq")));
		productVO.setKind(multi.getParameter("kind"));
		productVO.setName(multi.getParameter("name"));
		productVO.setPrice1(Integer.parseInt(multi.getParameter("price1")));
		productVO.setPrice2(Integer.parseInt(multi.getParameter("price2")));
		productVO.setPrice3(Integer.parseInt(multi.getParameter("price2"))
				- Integer.parseInt(multi.getParameter("price1")));
		productVO.setContent(multi.getParameter("content"));
		productVO.setUseyn(multi.getParameter("useyn"));
		productVO.setBestyn(multi.getParameter("bestyn"));
		if (multi.getFilesystemName("image") == null) {
			productVO.setImage(multi.getParameter("nonmakeImg"));
		} else {
			productVO.setImage(multi.getFilesystemName("image"));
		}

		/* ProductDAO productDAO = ProductDAO_JDBC.getInstance(); */
		ProductDAO productDAO = ProductDAO_iBatis.getInstance();
		try {
			productDAO.updateProduct(productVO);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}
	

}
