package Utilirias;

import java.math.BigInteger;
import java.security.MessageDigest;

public class Utils {

    public static String getMD5(String input){
        try {
            MessageDigest md = MessageDigest.getInstance("MD5"); 
            byte[] messageDigest = md.digest(input.getBytes()); 
            BigInteger no = new BigInteger(1, messageDigest); 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }catch (Exception e) { 
            throw new RuntimeException();
        }
    }
    
}
