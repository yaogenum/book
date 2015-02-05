package hibernate;

/**
 * AbstractWordRecords entity provides the base persistence definition of the
 * WordRecords entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractWordRecords implements java.io.Serializable {

	// Fields

	private String booksName;
	private String bookBool;
	private Integer booksAmount;
	private String time;
	private String leibie;

	// Constructors

	/** default constructor */
	public AbstractWordRecords() {
	}

	/** minimal constructor */
	public AbstractWordRecords(String booksName) {
		this.booksName = booksName;
	}

	/** full constructor */
	public AbstractWordRecords(String booksName, String bookBool,
			Integer booksAmount, String time, String leibie) {
		this.booksName = booksName;
		this.bookBool = bookBool;
		this.booksAmount = booksAmount;
		this.time = time;
		this.leibie = leibie;
	}

	// Property accessors

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public String getBookBool() {
		return this.bookBool;
	}

	public void setBookBool(String bookBool) {
		this.bookBool = bookBool;
	}

	public Integer getBooksAmount() {
		return this.booksAmount;
	}

	public void setBooksAmount(Integer booksAmount) {
		this.booksAmount = booksAmount;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLeibie() {
		return this.leibie;
	}

	public void setLeibie(String leibie) {
		this.leibie = leibie;
	}

}