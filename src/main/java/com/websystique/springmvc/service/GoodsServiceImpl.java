package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.GoodsDao;
import com.websystique.springmvc.model.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by dbrat on 16.07.2017.
 */
@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao dao;

    @Override
    public void saveGood(Goods g) {
        dao.saveGood(g);
    }

    @Override
    public List<Goods> findAllGoods() {
        return dao.findAllGoods();
    }

    @Override
    public void deleteGoodByID(int id) {
        dao.deleteGoodById(id);
    }

    @Override
    public void updateGood(Goods good) {
        Goods entity = dao.findById(good.getId());
        if (entity != null) {
            entity.setId(good.getId());
            entity.setDescription(good.getDescription());
            entity.setName(good.getName());
        }
    }

    @Override
    public Goods findById(int id) {
        return dao.findById(id);
    }

}
