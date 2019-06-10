package com.wenr.util;

import java.security.MessageDigest;

/**
 * @author CNan
 * @date 2019/6/9
 */
public class MD5Util {

    public static String md5(String content) {
        MessageDigest messageDigest ;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(content.getBytes("UTF8"));
            byte s[] = messageDigest.digest();

            StringBuilder result = new StringBuilder();
            for (int i = 0; i < s.length; i++) {
                result.append(Integer.toHexString((0x000000FF & s[i]) | 0xFFFFFF00).substring(6));
            }
            return result.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        System.out.println(MD5Util.md5("123456"));
    }
}
