/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author DuongNguyen
 */
public class MD5 {

    public static String Encoding(String ChuoiCanMaHoa) {
        String ChuoiMaHoa = "";
        MessageDigest digest;
        try {
            digest = MessageDigest.getInstance("MD5");
            digest.update(ChuoiCanMaHoa.getBytes());
            BigInteger bigInteger = new BigInteger(1, digest.digest());
            ChuoiMaHoa = bigInteger.toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return ChuoiMaHoa;
    }

//    public static void main(String[] args) {
//        System.out.println(MD5.Encoding("123456"));
//    }
}
