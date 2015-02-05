package com.db;

public class CreatePage {
	public int CurrentP;					//当前页码
	public int AllP;						//总页数
	public int AllR;						//总记录数
	public int PerR;						//每页显示的记录数
	public String PageLink;				//分页导航栏信息
	public String PageInfo;					//分页状态显示信息
	
	public CreatePage(){
		CurrentP=1;						//设置当前页码为1
		AllP=1;				  			//设置总页数为1
		AllR=0;							//设置总记录数为0
		PerR=10;							//设置每页显示10条记录
		PageLink="";
		PageInfo="";
	}  
	
	public CreatePage(int perR){
		CurrentP=1;						//设置当前页码为1
		AllP=1;				  			//设置总页数为1
		AllR=0;							//设置总记录数为0
		PerR=perR;							//设置每页显示10条记录
		PageLink="";
		PageInfo="";
	}
	
	/** 设置总记录数 */
	public void setAllR(int AllR){
		this.AllR=AllR;
	}
	
	/** 计算总页数 */
	public void setAllP(){
		AllP=(AllR%PerR==0)?(AllR/PerR):(AllR/PerR+1);
	}
	 
	/** 设置当前页码 */
	public void setCurrentP(String currentP) {
		if(currentP==null||currentP.equals(""))
		  	currentP="1";
		try{
			CurrentP=Integer.parseInt(currentP);
		}catch(NumberFormatException e){				//若参数传递的当前页码不是数字形式
			CurrentP=1;								//将当前页码设为1
			e.printStackTrace();
		}
		if(CurrentP<1)									//若当前页码小于1
			CurrentP=1;								//将当前页码赋值为1
		if(CurrentP>AllP)								//若当前页码大于总页数
			CurrentP=AllP;							//将当前页码赋值为总页数，即最后一页
	}
	
	/** 设置分页状态显示信息 */
	public void setPageInfo(){
		if(AllP>1){
			PageInfo="<table border='0' cellpadding='3'><tr><td>";
			PageInfo+="每页显示："+PerR+"/"+AllR+" 条记录！";
			PageInfo+="当前页："+CurrentP+"/"+AllP+" 页！";
			PageInfo+="</td></tr></table>";			
		}
	}
	
	/** 设置分页导航栏信息 */
	public void setPageLink(String gowhich){
		if(gowhich==null)
			gowhich="";
		if(gowhich.indexOf("?")>=0)
			gowhich+="&";
		else
			gowhich+="?";
		if(AllP>1){						//如果总页数大于1页，生成分页导航链接
			PageLink="<table border='0' cellpadding='3'><tr><td>";
			if(CurrentP>1){				//若当前页码大于1，则显示“首页”和“上一页”超链接
				PageLink+="<a href='"+gowhich+"showpage=1'>首页</a>&nbsp;";
				PageLink+="<a href='"+gowhich+"showpage="+(CurrentP-1)+"'>上一页</a>&nbsp;";
			}
			if(CurrentP<AllP){				//若当前页码小于总页数，则显示“下一页”和“尾页”超链接
				PageLink+="<a href='"+gowhich+"showpage="+(CurrentP+1)+"'>下一页</a>&nbsp;";
				PageLink+="<a href='"+gowhich+"showpage="+AllP+"'>尾页</a>";
			}
			PageLink+="</td></tr></table>";
		}
	}
}