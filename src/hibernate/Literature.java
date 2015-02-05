package hibernate;

/**
 * Literature entity. @author MyEclipse Persistence Tools
 */
public class Literature extends AbstractLiterature implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Literature() {
	}

	/** full constructor */
	public Literature(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
