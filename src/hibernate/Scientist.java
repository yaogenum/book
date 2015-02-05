package hibernate;

/**
 * Scientist entity. @author MyEclipse Persistence Tools
 */
public class Scientist extends AbstractScientist implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Scientist() {
	}

	/** full constructor */
	public Scientist(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
