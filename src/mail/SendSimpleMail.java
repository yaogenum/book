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
		String mailserver = "yaoge_num@sina.cn";//����ʹ����
		String from = "root@aishu.com";
		String to = mail;//yaoge_num@sina.cn
		String subject = "������Լ";
		String messageText = "�𾴵�"+name+",��Ҫ�һص�������" + password;
		java.util.Properties props = System.getProperties();
		props.put("smtp.sina.cn", mailserver);//������
		props.put("mail.smtp.auth", "true");
		MySecurity msec = new MySecurity("root", "root");
		Session mailSession = Session.getDefaultInstance(props, msec);
		mailSession.setDebug(false);
		Message msg = new MimeMessage(mailSession);// �����ļ���Ϣ
		msg.setFrom(new InternetAddress(from)); // ���ô����ʼ��ķ�����
		address = InternetAddress.parse(to, false); // ָ�������˵�����
		msg.setRecipients(Message.RecipientType.TO, address); // ��ָ�����䷢��
		msg.setSubject(subject);
		msg.setSentDate(new Date()); // ���̷���
		msg.setText(messageText); // ���͵�����
		Transport.send(msg, msg.getAllRecipients());
	}
}

/*
InternetAddress[] address = null;
String mailserver = "yaoge_num@sina.cn";//����ʹ����
String from = "root@aishu.com";
String to = "2318812170@qq.com";//yaoge_num@sina.cn
String subject = "������Լ";
String messageText = "�𾴵��û�����Ҫ�һص�������" + "12345";
java.util.Properties props = System.getProperties();
props.put("smtp.sina.cn", mailserver);//������
props.put("mail.smtp.auth", "true");
MySecurity msec = new MySecurity("root", "root");
Session mailSession = Session.getDefaultInstance(props, msec);
mailSession.setDebug(false);
Message msg = new MimeMessage(mailSession);// �����ļ���Ϣ
msg.setFrom(new InternetAddress(from)); // ���ô����ʼ��ķ�����
address = InternetAddress.parse(to, false); // ָ�������˵�����
msg.setRecipients(Message.RecipientType.TO, address); // ��ָ�����䷢��
msg.setSubject(subject);
msg.setSentDate(new Date()); // ���̷���
msg.setText(messageText); // ���͵�����
Transport.send(msg, msg.getAllRecipients());*/