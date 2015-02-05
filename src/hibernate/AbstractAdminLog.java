package hibernate;

/**
 * AbstractAdminLog entity provides the base persistence definition of the
 * AdminLog entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractAdminLog implements java.io.Serializable {

	// Fields

	private String comId;
	private String comTime;
	private String comAgain;

	// Constructors

	/** default constructor */
	public AbstractAdminLog() {
	}

	/** minimal constructor */
	public AbstractAdminLog(String comId) {
		this.comId = comId;
	}

	/** full constructor */
	public AbstractAdminLog(String comId, String comTime, String comAgain) {
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