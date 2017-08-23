package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Goods;

import java.util.List;

/**
 * Created by dbrat on 16.07.2017.
 */
public interface GoodsDao {

    public void saveGood(Goods g);

    public List<Goods> findAllGoods();

    void deleteGoodById(int id);

      Goods findById(int id);
}
