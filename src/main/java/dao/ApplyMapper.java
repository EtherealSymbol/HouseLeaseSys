package dao;

import java.util.List;

import pojo.Apply;
import pojo.Applyout;

public interface ApplyMapper {
	
	void insertapply(Apply apply);
	
	public List<Apply> findapplylist() throws Exception;
	
	Apply findbyhouse_id(String house_id);
	
	public void deletebyhouse_id(String house_id);
	
	public void updateapplyout(Applyout applyout);
	
}
