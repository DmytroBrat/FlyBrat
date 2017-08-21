package com.websystique.springmvc.service;

import com.websystique.springmvc.model.Goods;

import java.util.List;

/**
 * Created by dbrat on 16.07.2017.
 */
public interface GoodsService {
    
    public void saveGood(Goods g);

    public List<Goods> findAllGoods();

    void deleteGoodByID(int id);

//    Goods findById(int id);
}
