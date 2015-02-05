package hibernate;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
public class Users extends AbstractUsers implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** full constructor */
	public Users(String usersName, String usersPassword, String usersEmail,
			String usersSex, String usersIn, String usersVip, Integer usersAge,
			Integer usersGrades) {
		super(usersName, usersPassword, usersEmail, usersSex, usersIn,
				usersVip, usersAge, usersGrades);
	}

}
