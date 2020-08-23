package com.ben.dao;



public interface BaseMapper<T> {

    int insert(T record);

    int update(T record);

    int delete(int id);

    T selectById(int id);
}
