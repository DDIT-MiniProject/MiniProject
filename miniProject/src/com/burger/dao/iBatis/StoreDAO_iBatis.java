package com.burger.dao.iBatis;

import java.sql.SQLException;
import java.util.ArrayList;

import com.burger.dao.StoreDAO;
import com.burger.db.sqlconfig.IBatisDBConnector;
import com.burger.dto.AddressVO;
import com.burger.dto.StoreVO;
import com.ibatis.sqlmap.client.SqlMapClient;

public class StoreDAO_iBatis implements StoreDAO {
	private SqlMapClient client = IBatisDBConnector.getSqlMapInstance();
	private static StoreDAO_iBatis instance = new StoreDAO_iBatis();

	private StoreDAO_iBatis() {
	}

	public static StoreDAO_iBatis getInstance() {
		return instance;
	}
	
	@Override
	public ArrayList<StoreVO> searchStore(String dong, String key)throws SQLException {
		ArrayList<StoreVO> searchList = (ArrayList<StoreVO>)client.queryForList("searchStore", key);
		return searchList;
	}

	@Override
	public ArrayList<StoreVO> selectAllStore() throws SQLException {
		ArrayList<StoreVO> allList = (ArrayList<StoreVO>) client.queryForList("selectAllStore",null); 
		return allList;
	}

}
