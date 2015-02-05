package com.db;

public class CreatePage {
	public int CurrentP;					//��ǰҳ��
	public int AllP;						//��ҳ��
	public int AllR;						//�ܼ�¼��
	public int PerR;						//ÿҳ��ʾ�ļ�¼��
	public String PageLink;				//��ҳ��������Ϣ
	public String PageInfo;					//��ҳ״̬��ʾ��Ϣ
	
	public CreatePage(){
		CurrentP=1;						//���õ�ǰҳ��Ϊ1
		AllP=1;				  			//������ҳ��Ϊ1
		AllR=0;							//�����ܼ�¼��Ϊ0
		PerR=10;							//����ÿҳ��ʾ10����¼
		PageLink="";
		PageInfo="";
	}  
	
	public CreatePage(int perR){
		CurrentP=1;						//���õ�ǰҳ��Ϊ1
		AllP=1;				  			//������ҳ��Ϊ1
		AllR=0;							//�����ܼ�¼��Ϊ0
		PerR=perR;							//����ÿҳ��ʾ10����¼
		PageLink="";
		PageInfo="";
	}
	
	/** �����ܼ�¼�� */
	public void setAllR(int AllR){
		this.AllR=AllR;
	}
	
	/** ������ҳ�� */
	public void setAllP(){
		AllP=(AllR%PerR==0)?(AllR/PerR):(AllR/PerR+1);
	}
	 
	/** ���õ�ǰҳ�� */
	public void setCurrentP(String currentP) {
		if(currentP==null||currentP.equals(""))
		  	currentP="1";
		try{
			CurrentP=Integer.parseInt(currentP);
		}catch(NumberFormatException e){				//���������ݵĵ�ǰҳ�벻��������ʽ
			CurrentP=1;								//����ǰҳ����Ϊ1
			e.printStackTrace();
		}
		if(CurrentP<1)									//����ǰҳ��С��1
			CurrentP=1;								//����ǰҳ�븳ֵΪ1
		if(CurrentP>AllP)								//����ǰҳ�������ҳ��
			CurrentP=AllP;							//����ǰҳ�븳ֵΪ��ҳ���������һҳ
	}
	
	/** ���÷�ҳ״̬��ʾ��Ϣ */
	public void setPageInfo(){
		if(AllP>1){
			PageInfo="<table border='0' cellpadding='3'><tr><td>";
			PageInfo+="ÿҳ��ʾ��"+PerR+"/"+AllR+" ����¼��";
			PageInfo+="��ǰҳ��"+CurrentP+"/"+AllP+" ҳ��";
			PageInfo+="</td></tr></table>";			
		}
	}
	
	/** ���÷�ҳ��������Ϣ */
	public void setPageLink(String gowhich){
		if(gowhich==null)
			gowhich="";
		if(gowhich.indexOf("?")>=0)
			gowhich+="&";
		else
			gowhich+="?";
		if(AllP>1){						//�����ҳ������1ҳ�����ɷ�ҳ��������
			PageLink="<table border='0' cellpadding='3'><tr><td>";
			if(CurrentP>1){				//����ǰҳ�����1������ʾ����ҳ���͡���һҳ��������
				PageLink+="<a href='"+gowhich+"showpage=1'>��ҳ</a>&nbsp;";
				PageLink+="<a href='"+gowhich+"showpage="+(CurrentP-1)+"'>��һҳ</a>&nbsp;";
			}
			if(CurrentP<AllP){				//����ǰҳ��С����ҳ��������ʾ����һҳ���͡�βҳ��������
				PageLink+="<a href='"+gowhich+"showpage="+(CurrentP+1)+"'>��һҳ</a>&nbsp;";
				PageLink+="<a href='"+gowhich+"showpage="+AllP+"'>βҳ</a>";
			}
			PageLink+="</td></tr></table>";
		}
	}
}