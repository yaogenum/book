package hibernate;

/**
 * Math entity. @author MyEclipse Persistence Tools
 */
public class Math extends AbstractMath implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Math() {
	}

	/** full constructor */
	public Math(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
