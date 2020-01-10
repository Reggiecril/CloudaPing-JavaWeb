package com.cloudaping.cloudaping.utils;

import com.cloudaping.cloudaping.entity.productType.*;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;

public class ConvertDuplicate {
    private static Object getFieldValueByFieldName(String fieldName, Object object) {
        try {
            Field field = object.getClass().getDeclaredField(fieldName);
            //设置对象的访问权限，保证对private的属性的访问
            field.setAccessible(true);
            return  field.get(object);
        } catch (Exception e) {

            return null;
        }
    }
    public static Map<String,Set<Object>> getNotDuplicate(List<ProductType> list,Integer productType){
        Class<?> clazz=null;
        switch (productType){
            case 1:
                clazz= Mobile.class;
                break;
            case 2:
                clazz= AudioVideo.class;
                break;
            case 3:
                clazz= Laptop.class;
                break;
            case 4:
                clazz= Computer.class;
                break;
            case 5:
                clazz= Camera.class;
                break;

            default:
                clazz= Mobile.class;
                break;
        }
        Map<String,Set<Object>> map=new HashMap<>();
        Field[] fields=clazz.getDeclaredFields();
        for (Field field:fields){
            field.setAccessible(true);
            String name=field.getName();
            map.put(name,new HashSet<>());
        }

        for (int i = 0; i < list.size(); i++) {
            for (Map.Entry<String, Set<Object>> entry : map.entrySet()){
                Object o=getFieldValueByFieldName(entry.getKey(),list.get(i));
                if (o instanceof String)
                    o=((String) o).toUpperCase();
                map.get(entry.getKey()).add(o);
            }
        }
        return map;
    }
    public static void main(String[] args){
        Laptop productType=new Laptop();
        productType.setLaptopBrand("apple");
        Laptop productType1=new Laptop();
        productType1.setLaptopBrand("apple");
        Laptop productType2=new Laptop();
        productType2.setLaptopBrand("dell");
        List<ProductType> list=new ArrayList<>();
        list.add(productType);
        list.add(productType1);
        list.add(productType2);
        getNotDuplicate(list,1);

    }
}
