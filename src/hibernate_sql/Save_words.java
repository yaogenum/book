package hibernate_sql;

import hibernate.WordRecords;
import hibernate.WordRecordsDAO;

import java.text.SimpleDateFormat;


import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;



public class Save_words {
	public void set_word(String books_name,String bool,String files_form){
		WordRecords word=new WordRecords();
		int amount=1;
		WordRecordsDAO dao=new WordRecordsDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		
				
		String sql="select book_bool from word_records where books_name=? ";
		
		List<String> list=session.createSQLQuery(sql).addScalar("book_bool").setString(0, books_name).list();
		
		if(list.isEmpty()){
			word.setBooksName(books_name);
			word.setLeibie(files_form);
			word.setBookBool(bool);
			word.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
			.format(Calendar.getInstance().getTime()));
			word.setBooksAmount(amount);
			session.save(word);
		}
		else{
			word=dao.findById(books_name);
			amount=word.getBooksAmount();
			amount++;
			word.setBooksAmount(amount);
			word.setTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
			.format(Calendar.getInstance().getTime()));
			dao.save(word);
			
		}
		
		
		
		
		trans.commit();
		session.close();
	}
	
}
