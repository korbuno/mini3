package com.omp.common;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class AES256Util {

	final String secretKey = "590901234141235123415";
	Cipher c;
	
	public AES256Util() throws NoSuchAlgorithmException, NoSuchPaddingException {
		this.c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	}

	// 암호화
	public String aesEncode(String pass) throws InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException{
		
		c.init(
				Cipher.ENCRYPT_MODE,
				new SecretKeySpec(new byte[16], "AES"),
				new IvParameterSpec(secretKey.substring(0,16).getBytes())
		);
		return new String(Base64.encode(c.doFinal(pass.getBytes())));
	}
	
	// 복호화
	public String aesDecode(String pass) 
			throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException{
		Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
		c.init(
				Cipher.DECRYPT_MODE,
				new SecretKeySpec(new byte[16], "AES"),
				new IvParameterSpec(secretKey.substring(0,16).getBytes("UTF-8"))
		);
		
		return new String(c.doFinal(Base64.decode(pass)), "UTF-8");
	}
	
}
