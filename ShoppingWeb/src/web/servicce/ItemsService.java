package web.servicce;

import java.util.List;

import web.entity.Items;

public interface ItemsService {
	List<Items> inItemsList(String tablename);
	List<Items> byIdinItems(String tablename,Items items);
	Items goDetailItems(String tablename, Integer gid);
}
