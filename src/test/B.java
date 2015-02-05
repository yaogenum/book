package test;

public class B {
	private int xup;
	private int yup;
	private int xdown;
	public int getXdown() {
		return xdown;
	}
	public void setXdown(int xdown) {
		this.xdown = xdown;
	}

	private int ydown;
	B(){}
	B(int xup,int yup,int xdown,int ydown){
		this.xup=xup;
		this.yup=yup;
		this.xdown=xdown;
		this.ydown=ydown;
	}
	public int getW(){
		return (xdown-xup);
	}
	public int getH(){
		return (yup-ydown);
	}
	public int area(){
		int width=xdown-xup;
		int height=yup-ydown;
		return(width*height);
	}
	public String tostring(){
		int width=xdown-xup;
		int height=yup-ydown;
		int area=width*height;
		return ("nihao"+area);
	}
	
public static void main(String args[]){
	System.out.println("ok"=="ok");
	
	B b=new B(2,4,4,2);
	b.getW();
	b.getH();
	b.area();
	System.out.println(b.tostring());

}


}
