package hibernate;

/**
 * AdminLog entity. @author MyEclipse Persistence Tools
 */
public class AdminLog extends AbstractAdminLog implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public AdminLog() {
	}

	/** full constructor */
	public AdminLog(String comId, String comTime, String comAgain) {
		super(comId, comTime, comAgain);
	}

}
