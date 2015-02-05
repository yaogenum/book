package hibernate;

/**
 * AbstractWordSouId entity provides the base persistence definition of the
 * WordSouId entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractWordSouId implements java.io.Serializable {

	// Fields

	private String booksName;
	private Integer amount;
	private String time;
	private String bool;
	private String leibie;

	// Constructors

	/** default constructor */
	public AbstractWordSouId() {
	}

	/** full constructor */
	public AbstractWordSouId(String booksName, Integer amount, String time,
			String bool, String leibie) {
		this.booksName = booksName;
		this.amount = amount;
		this.time = time;
		this.bool = bool;
		this.leibie = leibie;
	}

	// Property accessors

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getBool() {
		return this.bool;
	}

	public void setBool(String bool) {
		this.bool = bool;
	}

	public String getLeibie() {
		return this.leibie;
	}

	public void setLeibie(String leibie) {
		this.leibie = leibie;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AbstractWordSouId))
			return false;
		AbstractWordSouId castOther = (AbstractWordSouId) other;

		return ((this.getBooksName() == castOther.getBooksName()) || (this
				.getBooksName() != null && castOther.getBooksName() != null && this
				.getBooksName().equals(castOther.getBooksName())))
				&& ((this.getAmount() == castOther.getAmount()) || (this
						.getAmount() != null && castOther.getAmount() != null && this
						.getAmount().equals(castOther.getAmount())))
				&& ((this.getTime() == castOther.getTime()) || (this.getTime() != null
						&& castOther.getTime() != null && this.getTime()
						.equals(castOther.getTime())))
				&& ((this.getBool() == castOther.getBool()) || (this.getBool() != null
						&& castOther.getBool() != null && this.getBool()
						.equals(castOther.getBool())))
				&& ((this.getLeibie() == castOther.getLeibie()) || (this
						.getLeibie() != null && castOther.getLeibie() != null && this
						.getLeibie().equals(castOther.getLeibie())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getBooksName() == null ? 0 : this.getBooksName().hashCode());
		result = 37 * result
				+ (getAmount() == null ? 0 : this.getAmount().hashCode());
		result = 37 * result
				+ (getTime() == null ? 0 : this.getTime().hashCode());
		result = 37 * result
				+ (getBool() == null ? 0 : this.getBool().hashCode());
		result = 37 * result
				+ (getLeibie() == null ? 0 : this.getLeibie().hashCode());
		return result;
	}

}