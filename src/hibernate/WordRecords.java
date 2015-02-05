package hibernate;

/**
 * WordRecords entity. @author MyEclipse Persistence Tools
 */
public class WordRecords extends AbstractWordRecords implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public WordRecords() {
	}

	/** minimal constructor */
	public WordRecords(String booksName) {
		super(booksName);
	}

	/** full constructor */
	public WordRecords(String booksName, String bookBool, Integer booksAmount,
			String time, String leibie) {
		super(booksName, bookBool, booksAmount, time, leibie);
	}

}
