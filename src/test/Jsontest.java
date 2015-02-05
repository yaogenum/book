package test;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONTokener;

public class Jsontest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<String> list=new ArrayList<String>();
		list.add("1");
		list.add("1");
		
		JSONArray array=JSONArray.fromObject(list);
		JSONObject ob=new JSONObject();
		ob.put("2", "2");
		ob.put("3", "3");
		array.add(ob);
		System.out.println(array.toString());
	
		
	}

}
