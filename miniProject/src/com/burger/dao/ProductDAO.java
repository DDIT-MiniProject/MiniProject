package com.burger.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.burger.dto.ProductVO;

public interface ProductDAO {

	// �떊�긽�뭹 由ъ뒪�듃 �뼸�뼱�삤湲�.
	public ArrayList<ProductVO> listNewProduct() throws SQLException;

	// 踰좎뒪�듃 �긽�뭹 由ъ뒪�듃 �뼸�뼱�삤湲�
	public ArrayList<ProductVO> listBestProduct() throws SQLException;

	// �긽�뭹踰덊샇濡� �긽�뭹�젙蹂� �븳媛� 媛��졇�삤湲�
	public ProductVO getProduct(String pseq) throws SQLException;

	// �긽�뭹醫낅쪟蹂� �긽�뭹 由ъ뒪�듃 �뼸�뼱�삤湲�
	public ArrayList<ProductVO> listKindProduct(String kind)
			throws SQLException;

	/*
	 * 愿�由ъ옄�럹�씠吏��뿉�꽌 �궗�슜�릺�뒗 硫붿꽌�뱶
	 */
	public int totalRecord(String product_name) throws SQLException;

	// �럹�씠吏� �씠�룞�쓣 �쐞�븳 硫붿냼�뱶
	public String pageNumber(int tpage, String name) throws SQLException;
	
	public ArrayList<ProductVO> listProduct(int tpage, String product_name) throws SQLException;
	
	public int insertProduct(ProductVO product) throws SQLException;
	
	public int updateProduct(ProductVO product) throws SQLException;
	
	public int deleteProduct(String pseq) throws SQLException;
}
