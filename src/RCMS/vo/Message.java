package RCMS.vo;

import java.sql.Timestamp;
/**
 * 消息
 * @author Administrator
 *
 */
public class Message {
	private Long id;
	private Long toUser;
	private Long fromUser;
	private String context;
	private Timestamp date;
	private Boolean isRead;
	private User userTo;
	private User userFrom;
	private String dateStr;
	
	public String getDateStr() {
		return dateStr;
	}
	public void setDateStr(String dateStr) {
		this.dateStr = dateStr;
	}
	public User getUserTo() {
		return userTo;
	}
	public void setUserTo(User userTo) {
		this.userTo = userTo;
	}
	public User getUserFrom() {
		return userFrom;
	}
	public void setUserFrom(User userFrom) {
		this.userFrom = userFrom;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getToUser() {
		return toUser;
	}
	public void setToUser(Long toUser) {
		this.toUser = toUser;
	}
	public Long getFromUser() {
		return fromUser;
	}
	public void setFromUser(Long fromUser) {
		this.fromUser = fromUser;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Boolean getIsRead() {
		return isRead;
	}
	public void setIsRead(Boolean isRead) {
		this.isRead = isRead;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", toUser=" + toUser + ", fromUser="
				+ fromUser + ", context=" + context + ", date=" + date
				+ ", isRead=" + isRead + "]\n";
	}

	

}
