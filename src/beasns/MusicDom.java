package beasns;

import javax.xml.parsers.*;

import org.w3c.dom.*;
import java.io.*;


public class MusicDom {
	// Ω‚ŒˆDOM
	public static String dom(File file) {

		String address = "";
		try {

			DocumentBuilderFactory factory = DocumentBuilderFactory
					.newInstance();

			DocumentBuilder builder = factory.newDocumentBuilder();

			Document doc = builder.parse(file);

			NodeList url_list = doc.getElementsByTagName("url");

			Element e1 = (Element) url_list.item(0);
			address = e1.getElementsByTagName("encode").item(0).getFirstChild()
					.getNodeValue();
			Element e2 = (Element) url_list.item(0);
			address += "/"
					+ e2.getElementsByTagName("decode").item(0).getFirstChild()
							.getNodeValue();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return address;
	}
	
}
