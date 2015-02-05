package test;

import hibernate.Users;
import hibernate.UsersDAO;
import hibernate.UsersLog;
import hibernate.UsersLogDAO;
import hibernate.WordRecords;
import hibernate.WordRecordsDAO;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
 
public class A {
	private int c;
	A(int d){
		c=d;
	}
	boolean bool(A a){
		if(this.c==a.c){
			return true;
		}
		else{
			return false;
		}
	}
	public static void main(String args[]){
	
		
		
		
		
		String a="12342wsbcxhsdis";
		System.out.println(a.indexOf("[78||12]"));
	}
}
