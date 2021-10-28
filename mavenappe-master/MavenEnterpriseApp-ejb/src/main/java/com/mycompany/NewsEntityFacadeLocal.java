/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany;

import ejb.NewsEntity;

import javax.ejb.Local;
import java.util.List;

/**
 *
 * @author giovanna
 */
@Local
public interface NewsEntityFacadeLocal {

    void create(NewsEntity newsEntity);

    void edit(NewsEntity newsEntity);

    void remove(NewsEntity newsEntity);

    NewsEntity find(Object id);

    List<NewsEntity> findAll();

    List<NewsEntity> findRange(int[] range);

    int count();
    
}
