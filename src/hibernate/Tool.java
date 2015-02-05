package hibernate;

/**
 * Tool entity. @author MyEclipse Persistence Tools
 */
public class Tool extends AbstractTool implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Tool() {
	}

	/** full constructor */
	public Tool(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
