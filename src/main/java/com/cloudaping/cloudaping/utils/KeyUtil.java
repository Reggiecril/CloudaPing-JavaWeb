package com.cloudaping.cloudaping.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class KeyUtil {
    public static synchronized String getUniqueKey(){
        Random random=new Random();
        Integer number=random.nextInt(900000)+100000;
        return System.currentTimeMillis()+ String.valueOf(number);
    }
    public static synchronized String getOrderKey(){
        Date date=new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateString = formatter.format(date);
        Random random=new Random();
        return dateString+random.nextInt(900000)+100000;
    }
}
