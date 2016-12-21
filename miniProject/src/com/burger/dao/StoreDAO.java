package com.burger.dao;

import java.sql.SQLException;

import java.util.ArrayList;

import com.burger.dto.StoreVO;

public interface StoreDAO {
	public ArrayList<StoreVO> searchStore(String dong,String key) throws SQLException;
	public ArrayList<StoreVO> selectAllStore() throws SQLException;
}
