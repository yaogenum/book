package mail;

import java.util.Date;


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendSimpleMail {
	public SendSimpleMail(){} 
	public void sendmail(String name,String mail,String password) throws AddressException, MessagingException{
		InternetAddress[] address = null;
		String mailserver = "yaoge_num@sina.cn";//邮箱使用名
		String from = "root@aishu.com";
		String to = mail;//yaoge_num@sina.cn
		String subject = "佳书有约";
		String messageText = "尊敬的"+name+",你要找回的密码是" + password;
		java.util.Properties props = System.getProperties();
		props.put("smtp.sina.cn", mailserver);//主机名
		props.put("mail.smtp.auth", "true");
		MySecurity msec = new MySecurity("root", "root");
		Session mailSession = Session.getDefaultInstance(props, msec);
		mailSession.setDebug(false);
		Message msg = new MimeMessage(mailSession);// 创建文件信息
		msg.setFrom(new InternetAddress(from)); // 设置传送邮件的发信人
		address = InternetAddress.parse(to, false); // 指定收信人的信箱
		msg.setRecipients(Message.RecipientType.TO, address); // 向指定邮箱发送
		msg.setSubject(subject);
		msg.setSentDate(new Date()); // 立刻发送
		msg.setText(messageText); // 发送的内容
		Transport.send(msg, msg.getAllRecipients());
	}
}

/*
InternetAddress[] address = null;
String mailserver = "yaoge_num@sina.cn";//邮箱使用名
String from = "root@aishu.com";
String to = "2318812170@qq.com";//yaoge_num@sina.cn
String subject = "佳书有约";
String messageText = "尊敬的用户，你要找回的密码是" + "12345";
java.util.Properties props = System.getProperties();
props.put("smtp.sina.cn", mailserver);//主机名
props.put("mail.smtp.auth", "true");
MySecurity msec = new MySecurity("root", "root");
Session mailSession = Session.getDefaultInstance(props, msec);
mailSession.setDebug(false);
Message msg = new MimeMessage(mailSession);// 创建文件信息
msg.setFrom(new InternetAddress(from)); // 设置传送邮件的发信人
address = InternetAddress.parse(to, false); // 指定收信人的信箱
msg.setRecipients(Message.RecipientType.TO, address); // 向指定邮箱发送
msg.setSubject(subject);
msg.setSentDate(new Date()); // 立刻发送
msg.setText(messageText); // 发送的内容
Transport.send(msg, msg.getAllRecipients());*/