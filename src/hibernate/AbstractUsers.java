package hibernate;

/**
 * AbstractUsers entity provides the base persistence definition of the Users
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsers implements java.io.Serializable {

	// Fields

	private Integer id;
	private String usersName;
	private String usersPassword;
	private String usersEmail;
	private String usersSex;
	private String usersIn;
	private String usersVip;
	private Integer usersAge;
	private Integer usersGrades;

	// Constructors

	/** default constructor */
	public AbstractUsers() {
	}

	/** full constructor */
	public AbstractUsers(String usersName, String usersPassword,
			String usersEmail, String usersSex, String usersIn,
			String usersVip, Integer usersAge, Integer usersGrades) {
		this.usersName = usersName;
		this.usersPassword = usersPassword;
		this.usersEmail = usersEmail;
		this.usersSex = usersSex;
		this.usersIn = usersIn;
		this.usersVip = usersVip;
		this.usersAge = usersAge;
		this.usersGrades = usersGrades;
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

	public String getUsersPassword() {
		return this.usersPassword;
	}

	public void setUsersPassword(String usersPassword) {
		this.usersPassword = usersPassword;
	}

	public String getUsersEmail() {
		return this.usersEmail;
	}

	public void setUsersEmail(String usersEmail) {
		this.usersEmail = usersEmail;
	}

	public String getUsersSex() {
		return this.usersSex;
	}

	public void setUsersSex(String usersSex) {
		this.usersSex = usersSex;
	}

	public String getUsersIn() {
		return this.usersIn;
	}

	public void setUsersIn(String usersIn) {
		this.usersIn = usersIn;
	}

	public String getUsersVip() {
		return this.usersVip;
	}

	public void setUsersVip(String usersVip) {
		this.usersVip = usersVip;
	}

	public Integer getUsersAge() {
		return this.usersAge;
	}

	public void setUsersAge(Integer usersAge) {
		this.usersAge = usersAge;
	}

	public Integer getUsersGrades() {
		return this.usersGrades;
	}

	public void setUsersGrades(Integer usersGrades) {
		this.usersGrades = usersGrades;
	}

}