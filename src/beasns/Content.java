package beasns;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class Content {
	public static void main(String args[]) throws IOException{
		File file=new File("D:/unreal_path/book/WebRoot/save_files/12345.txt");
		char[] bt=new char[1024];
		int len=0;
		int temp=0;
		String l=null;
		Reader read=new FileReader(file);
		while((temp=read.read())!=-1){
			bt[len]=(char)temp;
			len++;
			l=l+(char)temp;
		}
		
		System.out.println(l);
	}
}
