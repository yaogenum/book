package hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * UsersHistory entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see hibernate.UsersHistory
 * @author MyEclipse Persistence Tools
 */

public class UsersHistoryDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(UsersHistoryDAO.class);
	// property constants
	public static final String USERS_NAME = "usersName";
	public static final String BOOKS_NAME = "booksName";
	public static final String BOOKS_LEIBIE = "booksLeibie";
	public static final String START_TIME = "startTime";
	public static final String END_TIME = "endTime";
	public static final String READ_STATUS = "readStatus";
	public static final String ACTIVE_TIME = "activeTime";

	public void save(UsersHistory transientInstance) {
		log.debug("saving UsersHistory instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UsersHistory persistentInstance) {
		log.debug("deleting UsersHistory instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UsersHistory findById(java.lang.Integer id) {
		log.debug("getting UsersHistory instance with id: " + id);
		try {
			UsersHistory instance = (UsersHistory) getSession().get(
					"hibernate.UsersHistory", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(UsersHistory instance) {
		log.debug("finding UsersHistory instance by example");
		try {
			List results = getSession()
					.createCriteria("hibernate.UsersHistory")
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
		log.debug("finding UsersHistory instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UsersHistory as model where model."
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

	public List findByBooksName(Object booksName) {
		return findByProperty(BOOKS_NAME, booksName);
	}

	public List findByBooksLeibie(Object booksLeibie) {
		return findByProperty(BOOKS_LEIBIE, booksLeibie);
	}

	public List findByStartTime(Object startTime) {
		return findByProperty(START_TIME, startTime);
	}

	public List findByEndTime(Object endTime) {
		return findByProperty(END_TIME, endTime);
	}

	public List findByReadStatus(Object readStatus) {
		return findByProperty(READ_STATUS, readStatus);
	}

	public List findByActiveTime(Object activeTime) {
		return findByProperty(ACTIVE_TIME, activeTime);
	}

	public List findAll() {
		log.debug("finding all UsersHistory instances");
		try {
			String queryString = "from UsersHistory";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UsersHistory merge(UsersHistory detachedInstance) {
		log.debug("merging UsersHistory instance");
		try {
			UsersHistory result = (UsersHistory) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UsersHistory instance) {
		log.debug("attaching dirty UsersHistory instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UsersHistory instance) {
		log.debug("attaching clean UsersHistory instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}