package hibernate;

/**
 * AbstractUsersLog entity provides the base persistence definition of the
 * UsersLog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsersLog implements java.io.Serializable {

	// Fields

	private String comId;
	private String comTime;
	private String comAgain;

	// Constructors

	/** default constructor */
	public AbstractUsersLog() {
	}

	/** minimal constructor */
	public AbstractUsersLog(String comId) {
		this.comId = comId;
	}

	/** full constructor */
	public AbstractUsersLog(String comId, String comTime, String comAgain) {
		this.comId = comId;
		this.comTime = comTime;
		this.comAgain = comAgain;
	}

	// Property accessors

	public String getComId() {
		return this.comId;
	}

	public void setComId(String comId) {
		this.comId = comId;
	}

	public String getComTime() {
		return this.comTime;
	}

	public void setComTime(String comTime) {
		this.comTime = comTime;
	}

	public String getComAgain() {
		return this.comAgain;
	}

	public void setComAgain(String comAgain) {
		this.comAgain = comAgain;
	}

}