package hibernate;

/**
 * UsersMusic entity. @author MyEclipse Persistence Tools
 */
public class UsersMusic extends AbstractUsersMusic implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UsersMusic() {
	}

	/** full constructor */
	public UsersMusic(String usersName, String musicTime, String musicName,
			String musicSonger, String booksName, String booksLeibie,
			String musicExit, String beijingMusic) {
		super(usersName, musicTime, musicName, musicSonger, booksName,
				booksLeibie, musicExit, beijingMusic);
	}

}
