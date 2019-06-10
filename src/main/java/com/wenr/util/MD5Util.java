package com.wenr.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author CNan
 * @date 2019/6/9
 */
public class MD5Util {

    public static String md5(String content) {
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("Md5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        messageDigest.update(content.getBytes());

        return new BigInteger(1,messageDigest.digest()).toString();
    }
}
