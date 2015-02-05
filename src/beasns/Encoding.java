package beasns;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class Encoding {
	String translate;
	public String encoding(String translate){
		this.translate=translate;
		try {
			byte[] chinese=translate.getBytes("ISO-8859-1");
			translate=new String(chinese);
		} catch (UnsupportedEncodingException e) {
			translate="errors";
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return translate;
	}  
	public String decode(String setcode) throws UnsupportedEncodingException{
		setcode=URLDecoder.decode(setcode,"utf-8");
		return setcode;
	}
}
