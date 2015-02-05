package hibernate;

/**
 * Fiction entity. @author MyEclipse Persistence Tools
 */
public class Fiction extends AbstractFiction implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Fiction() {
	}

	/** full constructor */
	public Fiction(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		super(booksName, booksTag, booksAuthor, booksAmount, booksStoragetime,
				booksPath, booksUploader, booksPic, booksXiazai, booksLimit,
				booksText);
	}

}
