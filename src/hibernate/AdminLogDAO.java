package hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * AdminLog entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see hibernate.AdminLog
 * @author MyEclipse Persistence Tools
 */

public class AdminLogDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(AdminLogDAO.class);
	// property constants
	public static final String COM_TIME = "comTime";
	public static final String COM_AGAIN = "comAgain";

	public void save(AdminLog transientInstance) {
		log.debug("saving AdminLog instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(AdminLog persistentInstance) {
		log.debug("deleting AdminLog instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public AdminLog findById(java.lang.String id) {
		log.debug("getting AdminLog instance with id: " + id);
		try {
			AdminLog instance = (AdminLog) getSession().get(
					"hibernate.AdminLog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(AdminLog instance) {
		log.debug("finding AdminLog instance by example");
		try {
			List results = getSession().createCriteria("hibernate.AdminLog")
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
		log.debug("finding AdminLog instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from AdminLog as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByComTime(Object comTime) {
		return findByProperty(COM_TIME, comTime);
	}

	public List findByComAgain(Object comAgain) {
		return findByProperty(COM_AGAIN, comAgain);
	}

	public List findAll() {
		log.debug("finding all AdminLog instances");
		try {
			String queryString = "from AdminLog";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public AdminLog merge(AdminLog detachedInstance) {
		log.debug("merging AdminLog instance");
		try {
			AdminLog result = (AdminLog) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(AdminLog instance) {
		log.debug("attaching dirty AdminLog instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(AdminLog instance) {
		log.debug("attaching clean AdminLog instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}