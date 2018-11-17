package java_bean_util;

import java.io.Serializable;
import java.util.Date;

public class Counter implements Serializable{
	private int count;
	private Date recentDate;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getRecentDate() {
		return recentDate;
	}
	public void setRecentDate(Date recentDate) {
		this.recentDate = recentDate;
	}
	
}
