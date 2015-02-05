package hibernate;

/**
 * AbstractUsersMusic entity provides the base persistence definition of the
 * UsersMusic entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsersMusic implements java.io.Serializable {

	// Fields

	private Integer id;
	private String usersName;
	private String musicTime;
	private String musicName;
	private String musicSonger;
	private String booksName;
	private String booksLeibie;
	private String musicExit;
	private String beijingMusic;

	// Constructors

	/** default constructor */
	public AbstractUsersMusic() {
	}

	/** full constructor */
	public AbstractUsersMusic(String usersName, String musicTime,
			String musicName, String musicSonger, String booksName,
			String booksLeibie, String musicExit, String beijingMusic) {
		this.usersName = usersName;
		this.musicTime = musicTime;
		this.musicName = musicName;
		this.musicSonger = musicSonger;
		this.booksName = booksName;
		this.booksLeibie = booksLeibie;
		this.musicExit = musicExit;
		this.beijingMusic = beijingMusic;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsersName() {
		return this.usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getMusicTime() {
		return this.musicTime;
	}

	public void setMusicTime(String musicTime) {
		this.musicTime = musicTime;
	}

	public String getMusicName() {
		return this.musicName;
	}

	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}

	public String getMusicSonger() {
		return this.musicSonger;
	}

	public void setMusicSonger(String musicSonger) {
		this.musicSonger = musicSonger;
	}

	public String getBooksName() {
		return this.booksName;
	}

	public void setBooksName(String booksName) {
		this.booksName = booksName;
	}

	public String getBooksLeibie() {
		return this.booksLeibie;
	}

	public void setBooksLeibie(String booksLeibie) {
		this.booksLeibie = booksLeibie;
	}

	public String getMusicExit() {
		return this.musicExit;
	}

	public void setMusicExit(String musicExit) {
		this.musicExit = musicExit;
	}

	public String getBeijingMusic() {
		return this.beijingMusic;
	}

	public void setBeijingMusic(String beijingMusic) {
		this.beijingMusic = beijingMusic;
	}

}