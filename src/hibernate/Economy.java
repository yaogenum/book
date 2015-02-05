package hibernate;

/**
 * Economy entity. @author MyEclipse Persistence Tools
 */
public class Economy extends AbstractEconomy implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Economy() {
	}

	/** full constructor */
	public Economy(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksText,
			String booksPath, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksUploader) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksText, booksPath, booksPic, booksXiazai, booksLimit,
				booksUploader);
	}

}
