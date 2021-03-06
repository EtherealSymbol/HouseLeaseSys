package dao;

import java.util.List;

import pojo.Schedule;

public interface ScheduleMapper {
	
	public void insertschedule(Schedule schedule);
	
	public List<Schedule> selectAll();
	
	public void deleteschedule(Integer id);
	
	public void updateschedule(Schedule schedule);
	
	public Schedule selectbyid(Integer id);
	
}
