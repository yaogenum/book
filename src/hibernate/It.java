package hibernate;

/**
 * It entity. @author MyEclipse Persistence Tools
 */
public class It extends AbstractIt implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public It() {
	}

	/** full constructor */
	public It(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
