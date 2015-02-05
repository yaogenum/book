package hibernate;

/**
 * UsersLog entity. @author MyEclipse Persistence Tools
 */
public class UsersLog extends AbstractUsersLog implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public UsersLog() {
	}

	/** full constructor */
	public UsersLog(String comId, String comTime, String comAgain) {
		super(comId, comTime, comAgain);
	}

}
