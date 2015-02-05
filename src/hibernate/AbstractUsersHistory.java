package hibernate;

/**
 * AbstractUsersHistory entity provides the base persistence definition of the
 * UsersHistory entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsersHistory implements java.io.Serializable {

	// Fields

	private Integer id;
	private String usersName;
	private String booksName;
	private String booksLeibie;
	private String startTime;
	private String endTime;
	private String readStatus;
	private Double activeTime;

	// Constructors

	/** default constructor */
	public AbstractUsersHistory() {
	}

	/** full constructor */
	public AbstractUsersHistory(String usersName, String booksName,
			String booksLeibie, String startTime, String endTime,
			String readStatus, Double activeTime) {
		this.usersName = usersName;
		this.booksName = booksName;
		this.booksLeibie = booksLeibie;
		this.startTime = startTime;
		this.endTime = endTime;
		this.readStatus = readStatus;
		this.activeTime = activeTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsersName() {
		return this.usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public String getBooksLeibie() {
		return this.booksLeibie;
	}

	public void setBooksLeibie(String booksLeibie) {
		this.booksLeibie = booksLeibie;
	}

	public String getStartTime() {
		return this.startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return this.endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getReadStatus() {
		return this.readStatus;
	}

	public void setReadStatus(String readStatus) {
		this.readStatus = readStatus;
	}

	public Double getActiveTime() {
		return this.activeTime;
	}

	public void setActiveTime(Double activeTime) {
		this.activeTime = activeTime;
	}

}