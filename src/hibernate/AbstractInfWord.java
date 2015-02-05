package hibernate;

/**
 * AbstractInfWord entity provides the base persistence definition of the
 * InfWord entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractInfWord implements java.io.Serializable {

	// Fields

	private String booksName;
	private Integer souAmount;
	private String booksTime;
	private String bookBool;

	// Constructors

	/** default constructor */
	public AbstractInfWord() {
	}

	/** minimal constructor */
	public AbstractInfWord(String booksName) {
		this.booksName = booksName;
	}

	/** full constructor */
	public AbstractInfWord(String booksName, Integer souAmount,
			String booksTime, String bookBool) {
		this.booksName = booksName;
		this.souAmount = souAmount;
		this.booksTime = booksTime;
		this.bookBool = bookBool;
	}

	// Property accessors

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public Integer getSouAmount() {
		return this.souAmount;
	}

	public void setSouAmount(Integer souAmount) {
		this.souAmount = souAmount;
	}

	public String getBooksTime() {
		return this.booksTime;
	}

	public void setBooksTime(String booksTime) {
		this.booksTime = booksTime;
	}

	public String getBookBool() {
		return this.bookBool;
	}

	public void setBookBool(String bookBool) {
		this.bookBool = bookBool;
	}

}