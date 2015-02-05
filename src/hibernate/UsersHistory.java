package hibernate;

/**
 * UsersHistory entity. @author MyEclipse Persistence Tools
 */
public class UsersHistory extends AbstractUsersHistory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UsersHistory() {
	}

	/** full constructor */
	public UsersHistory(String usersName, String booksName, String booksLeibie,
			String startTime, String endTime, String readStatus,
			Double activeTime) {
		super(usersName, booksName, booksLeibie, startTime, endTime,
				readStatus, activeTime);
	}

}
