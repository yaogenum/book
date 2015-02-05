package hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * WordRecords entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see hibernate.WordRecords
 * @author MyEclipse Persistence Tools
 */

public class WordRecordsDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(WordRecordsDAO.class);
	// property constants
	public static final String BOOK_BOOL = "bookBool";
	public static final String BOOKS_AMOUNT = "booksAmount";
	public static final String TIME = "time";
	public static final String LEIBIE = "leibie";

	public void save(WordRecords transientInstance) {
		log.debug("saving WordRecords instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(WordRecords persistentInstance) {
		log.debug("deleting WordRecords instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public WordRecords findById(java.lang.String id) {
		log.debug("getting WordRecords instance with id: " + id);
		try {
			WordRecords instance = (WordRecords) getSession().get(
					"hibernate.WordRecords", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(WordRecords instance) {
		log.debug("finding WordRecords instance by example");
		try {
			List results = getSession().createCriteria("hibernate.WordRecords")
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
		log.debug("finding WordRecords instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from WordRecords as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBookBool(Object bookBool) {
		return findByProperty(BOOK_BOOL, bookBool);
	}

	public List findByBooksAmount(Object booksAmount) {
		return findByProperty(BOOKS_AMOUNT, booksAmount);
	}

	public List findByTime(Object time) {
		return findByProperty(TIME, time);
	}

	public List findByLeibie(Object leibie) {
		return findByProperty(LEIBIE, leibie);
	}

	public List findAll() {
		log.debug("finding all WordRecords instances");
		try {
			String queryString = "from WordRecords";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public WordRecords merge(WordRecords detachedInstance) {
		log.debug("merging WordRecords instance");
		try {
			WordRecords result = (WordRecords) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(WordRecords instance) {
		log.debug("attaching dirty WordRecords instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(WordRecords instance) {
		log.debug("attaching clean WordRecords instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}