package hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * UsersMusic entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see hibernate.UsersMusic
 * @author MyEclipse Persistence Tools
 */

public class UsersMusicDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(UsersMusicDAO.class);
	// property constants
	public static final String USERS_NAME = "usersName";
	public static final String MUSIC_TIME = "musicTime";
	public static final String MUSIC_NAME = "musicName";
	public static final String MUSIC_SONGER = "musicSonger";
	public static final String BOOKS_NAME = "booksName";
	public static final String BOOKS_LEIBIE = "booksLeibie";
	public static final String MUSIC_EXIT = "musicExit";
	public static final String BEIJING_MUSIC = "beijingMusic";

	public void save(UsersMusic transientInstance) {
		log.debug("saving UsersMusic instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UsersMusic persistentInstance) {
		log.debug("deleting UsersMusic instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UsersMusic findById(java.lang.Integer id) {
		log.debug("getting UsersMusic instance with id: " + id);
		try {
			UsersMusic instance = (UsersMusic) getSession().get(
					"hibernate.UsersMusic", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(UsersMusic instance) {
		log.debug("finding UsersMusic instance by example");
		try {
			List results = getSession().createCriteria("hibernate.UsersMusic")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding UsersMusic instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UsersMusic as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUsersName(Object usersName) {
		return findByProperty(USERS_NAME, usersName);
	}

	public List findByMusicTime(Object musicTime) {
		return findByProperty(MUSIC_TIME, musicTime);
	}

	public List findByMusicName(Object musicName) {
		return findByProperty(MUSIC_NAME, musicName);
	}

	public List findByMusicSonger(Object musicSonger) {
		return findByProperty(MUSIC_SONGER, musicSonger);
	}

	public List findByBooksName(Object booksName) {
		return findByProperty(BOOKS_NAME, booksName);
	}

	public List findByBooksLeibie(Object booksLeibie) {
		return findByProperty(BOOKS_LEIBIE, booksLeibie);
	}

	public List findByMusicExit(Object musicExit) {
		return findByProperty(MUSIC_EXIT, musicExit);
	}

	public List findByBeijingMusic(Object beijingMusic) {
		return findByProperty(BEIJING_MUSIC, beijingMusic);
	}

	public List findAll() {
		log.debug("finding all UsersMusic instances");
		try {
			String queryString = "from UsersMusic";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UsersMusic merge(UsersMusic detachedInstance) {
		log.debug("merging UsersMusic instance");
		try {
			UsersMusic result = (UsersMusic) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UsersMusic instance) {
		log.debug("attaching dirty UsersMusic instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UsersMusic instance) {
		log.debug("attaching clean UsersMusic instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}