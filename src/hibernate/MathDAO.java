package hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Math
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see hibernate.Math
 * @author MyEclipse Persistence Tools
 */

public class MathDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(MathDAO.class);
	// property constants
	public static final String BOOKS_NAME = "booksName";
	public static final String BOOKS_TAG = "booksTag";
	public static final String BOOKS_AUTHOR = "booksAuthor";
	public static final String BOOKS_AMOUNT = "booksAmount";
	public static final String BOOKS_STORAGETIME = "booksStoragetime";
	public static final String BOOKS_PATH = "booksPath";
	public static final String BOOKS_UPLOADER = "booksUploader";
	public static final String BOOKS_PIC = "booksPic";
	public static final String BOOKS_XIAZAI = "booksXiazai";
	public static final String BOOKS_LIMIT = "booksLimit";
	public static final String BOOKS_TEXT = "booksText";

	public void save(Math transientInstance) {
		log.debug("saving Math instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Math persistentInstance) {
		log.debug("deleting Math instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Math findById(java.lang.Integer id) {
		log.debug("getting Math instance with id: " + id);
		try {
			Math instance = (Math) getSession().get("hibernate.Math", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Math instance) {
		log.debug("finding Math instance by example");
		try {
			List results = getSession().createCriteria("hibernate.Math")
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
		log.debug("finding Math instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Math as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBooksName(Object booksName) {
		return findByProperty(BOOKS_NAME, booksName);
	}

	public List findByBooksTag(Object booksTag) {
		return findByProperty(BOOKS_TAG, booksTag);
	}

	public List findByBooksAuthor(Object booksAuthor) {
		return findByProperty(BOOKS_AUTHOR, booksAuthor);
	}

	public List findByBooksAmount(Object booksAmount) {
		return findByProperty(BOOKS_AMOUNT, booksAmount);
	}

	public List findByBooksStoragetime(Object booksStoragetime) {
		return findByProperty(BOOKS_STORAGETIME, booksStoragetime);
	}

	public List findByBooksPath(Object booksPath) {
		return findByProperty(BOOKS_PATH, booksPath);
	}

	public List findByBooksUploader(Object booksUploader) {
		return findByProperty(BOOKS_UPLOADER, booksUploader);
	}

	public List findByBooksPic(Object booksPic) {
		return findByProperty(BOOKS_PIC, booksPic);
	}

	public List findByBooksXiazai(Object booksXiazai) {
		return findByProperty(BOOKS_XIAZAI, booksXiazai);
	}

	public List findByBooksLimit(Object booksLimit) {
		return findByProperty(BOOKS_LIMIT, booksLimit);
	}

	public List findByBooksText(Object booksText) {
		return findByProperty(BOOKS_TEXT, booksText);
	}

	public List findAll() {
		log.debug("finding all Math instances");
		try {
			String queryString = "from Math";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Math merge(Math detachedInstance) {
		log.debug("merging Math instance");
		try {
			Math result = (Math) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Math instance) {
		log.debug("attaching dirty Math instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Math instance) {
		log.debug("attaching clean Math instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}