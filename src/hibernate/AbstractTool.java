package hibernate;

/**
 * AbstractTool entity provides the base persistence definition of the Tool
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractTool implements java.io.Serializable {

	// Fields

	private Integer id;
	private String booksName;
	private String booksTag;
	private String booksAuthor;
	private Integer booksAmount;
	private String booksStoragetime;
	private String booksPath;
	private String booksUploader;
	private String booksPic;
	private Integer booksXiazai;
	private Integer booksLimit;
	private String booksText;

	// Constructors

	/** default constructor */
	public AbstractTool() {
	}

	/** full constructor */
	public AbstractTool(String booksName, String booksTag, String booksAuthor,
			Integer booksAmount, String booksStoragetime, String booksPath,
			String booksUploader, String booksPic, Integer booksXiazai,
			Integer booksLimit, String booksText) {
		this.booksName = booksName;
		this.booksTag = booksTag;
		this.booksAuthor = booksAuthor;
		this.booksAmount = booksAmount;
		this.booksStoragetime = booksStoragetime;
		this.booksPath = booksPath;
		this.booksUploader = booksUploader;
		this.booksPic = booksPic;
		this.booksXiazai = booksXiazai;
		this.booksLimit = booksLimit;
		this.booksText = booksText;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public String getBooksTag() {
		return this.booksTag;
	}

	public void setBooksTag(String booksTag) {
		this.booksTag = booksTag;
	}

	public String getBooksAuthor() {
		return this.booksAuthor;
	}

	public void setBooksAuthor(String booksAuthor) {
		this.booksAuthor = booksAuthor;
	}

	public Integer getBooksAmount() {
		return this.booksAmount;
	}

	public void setBooksAmount(Integer booksAmount) {
		this.booksAmount = booksAmount;
	}

	public String getBooksStoragetime() {
		return this.booksStoragetime;
	}

	public void setBooksStoragetime(String booksStoragetime) {
		this.booksStoragetime = booksStoragetime;
	}

	public String getBooksPath() {
		return this.booksPath;
	}

	public void setBooksPath(String booksPath) {
		this.booksPath = booksPath;
	}

	public String getBooksUploader() {
		return this.booksUploader;
	}

	public void setBooksUploader(String booksUploader) {
		this.booksUploader = booksUploader;
	}

	public String getBooksPic() {
		return this.booksPic;
	}

	public void setBooksPic(String booksPic) {
		this.booksPic = booksPic;
	}

	public Integer getBooksXiazai() {
		return this.booksXiazai;
	}

	public void setBooksXiazai(Integer booksXiazai) {
		this.booksXiazai = booksXiazai;
	}

	public Integer getBooksLimit() {
		return this.booksLimit;
	}

	public void setBooksLimit(Integer booksLimit) {
		this.booksLimit = booksLimit;
	}

	public String getBooksText() {
		return this.booksText;
	}

	public void setBooksText(String booksText) {
		this.booksText = booksText;
	}

}