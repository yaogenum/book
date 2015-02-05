package hibernate;

/**
 * AbstractSouWord entity provides the base persistence definition of the
 * SouWord entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSouWord implements java.io.Serializable {

	// Fields

	private String wordName;
	private Integer wordAmount;
	private String wordTime;

	// Constructors

	/** default constructor */
	public AbstractSouWord() {
	}

	/** minimal constructor */
	public AbstractSouWord(String wordName) {
		this.wordName = wordName;
	}

	/** full constructor */
	public AbstractSouWord(String wordName, Integer wordAmount, String wordTime) {
		this.wordName = wordName;
		this.wordAmount = wordAmount;
		this.wordTime = wordTime;
	}

	// Property accessors

	public String getWordName() {
		return this.wordName;
	}

	public void setWordName(String wordName) {
		this.wordName = wordName;
	}

	public Integer getWordAmount() {
		return this.wordAmount;
	}

	public void setWordAmount(Integer wordAmount) {
		this.wordAmount = wordAmount;
	}

	public String getWordTime() {
		return this.wordTime;
	}

	public void setWordTime(String wordTime) {
		this.wordTime = wordTime;
	}

}