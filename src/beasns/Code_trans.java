package beasns;

import java.io.File;


import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

import org.apache.pdfbox.pdfparser.PDFParser;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;
import org.apache.poi.hslf.HSLFSlideShow;
import org.apache.poi.hslf.model.Shape;
import org.apache.poi.hslf.model.Slide;
import org.apache.poi.hslf.model.TextShape;
import org.apache.poi.hslf.usermodel.SlideShow;
import org.apache.poi.hwpf.extractor.WordExtractor;

import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.pdf.PdfObject;
import com.lowagie.text.pdf.PdfReader;
import org.apache.poi.hslf.model.TextBox;
import org.apache.poi.hslf.model.TextShape;


public class Code_trans {
	
	public void trans_file_pdf (String file_name) throws IOException{
		//String file_path="D:/unreal_path/book/WebRoot/save_files/hibernate_reference.pdf";
		File file=new File(file_name);
		FileInputStream in = null; 
		in = new FileInputStream(file_name);  
		
		PDFParser parser = new PDFParser(in); 
		parser.parse();
		PDDocument pdfdocument = parser.getPDDocument();  
		PDFTextStripper stripper = new PDFTextStripper(); 
		String result=stripper.getText(pdfdocument);
		
		in.close();
	
		String files_name[]=file_name.split("pdf");
		files_name[0]=files_name[0]+"txt";

		File files=new File(files_name[0]);
		FileWriter writer=new FileWriter(files,true);
		
		writer.write(result);
		writer.close();	
	}
	
	public void trans_file_doc (String file_name) throws IOException{
		//String file_path="D:/unreal_path/book/WebRoot/save_files/234234.doc";
		FileInputStream in = new FileInputStream (file_name);
		WordExtractor extractor = new WordExtractor(in);
		String text=extractor.getText();
		
		in.close();
		
		String files_name[]=file_name.split("doc");
		files_name[0]=files_name[0]+"txt";
		
		File files=new File(files_name[0]);
		FileWriter writer=new FileWriter(files,true);
		
		writer.write(text);
		writer.close();	
		
		
	}
	
	public void trans_file_ppt (String file_name) throws IOException{
		 SlideShow ppt = new SlideShow((new HSLFSlideShow(file_name)));
		 Slide[] slides = ppt.getSlides();
		 String content=null;
		 
		 String files_name[]=file_name.split("ppt");
		 files_name[0]=files_name[0]+"txt";
		 
		 File files=new File(files_name[0]);
		FileWriter writer=new FileWriter(files,true);
		 
		 for (int a = 0; a < slides.length; a++) {
			 Shape[] sps = slides[a].getShapes();
			 for(int i=0;i<sps.length;i++){
				content= ((TextShape) sps[i]).getText();
				writer.write(content);
			 }
		 }
		 
		writer.close();
		
	}
	/*
	public void trans_file_chm (String file_name) throws IOException{
		//String file_path="D:/unreal_path/book/WebRoot/save_files/hibernate_reference.pdf";
	
		
	}
	*/
	/*
	public static void main(String args[]) throws IOException{
		Code_trans c=new Code_trans();
		//c.trans_file_ppt("D:/unreal_path/book/WebRoot/save_files/test.ppt");
		c.trans_file_doc("D:/unreal_path/book/WebRoot/save_files/234234.doc");
		
	}	*/
}
