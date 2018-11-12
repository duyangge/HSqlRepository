package web.dao;

import java.util.List;

import web.entity.Items;

public interface ItemsDao {
	List<Items> inItemsList(String tablename);
	List<Items> byIdinItems(String tablename,Items items);
	Items goDetailItems(String tablename, Integer gid);
}
