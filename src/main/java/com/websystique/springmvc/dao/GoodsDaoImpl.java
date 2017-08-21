package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Goods;
import org.hibernate.*;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dbrat on 16.07.2017.
 */
@Repository("goodsDao")
public class GoodsDaoImpl extends AbstractDao<Integer, Goods> implements GoodsDao {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void saveGood(Goods g) {
        persist(g);
        //  Session session = this.sessionFactory.openSession();
        //   Transaction tx = session.beginTransaction();
        //   session.persist(g);
        //   tx.commit();
        //    session.close();
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Goods> findAllGoods() {
        /*Session session = this.sessionFactory.openSession();
        List<Goods> goodsList = session.createQuery("from goods").list();
        session.close();
        return goodsList;
        */
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("id"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<Goods> goods = (List<Goods>) criteria.list();

        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load.
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
        /*
        for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
        return goods;
    }

    @Override
    public void deleteGoodById(int id) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("id", id));
        Goods good = (Goods) crit.uniqueResult();
        delete(good);
    }
/*
    @Override
    public Goods findById(int id) {

        Goods good = getByKey(id);
        if (good != null) {
            Hibernate.initialize(good.getGoodsProfiles());
        }
        return good;

    }
    */
}
