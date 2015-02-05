package cal;
import javax.swing.*;
import java.awt.*;
import java.lang.Math;
import java.awt.event.*;
class JB extends JFrame implements ActionListener,MouseListener{  
private double n=0;
private double m1=0,m2=0;
private int k=0;
    JTextField text;JLabel name;
    JButton b[]=new JButton[18];   
    String s[]={"0","1","2","3","4","5","6","7","8","9","+","-","*","/","¸ùºÅ","ÃÝº¯Êý","¹éÁã","="};
    JB(){ 
    	setSize(500,500);
        Container c=getContentPane();
        c.setLayout(new GridLayout(5,5));
        name=new JLabel("¼ÆËãÆ÷");
        add(name);
        add(new JLabel());
        text=new JTextField("0");
        add(text);
        int i;
        for(i=0;i<18;i++)             
        {  
        	b[i]=new JButton(s[i]);      
            add(b[i]);
            b[i].addActionListener(this);   
        }                           
        setVisible(true);        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);    
    }    
    public void mousePressed(MouseEvent e){  }   
    public void mouseReleased(MouseEvent e){   }   
    public void mouseEntered(MouseEvent e){   }  
    public void mouseExited(MouseEvent e){  }    
    public void mouseClicked(MouseEvent e){  }    
    public void actionPerformed(ActionEvent e){    
       String str="";int i;
       for(i=0;i<=9;i++)                 
    	  if(e.getSource()==b[i]){
             n=n*10+i;
             str=String.valueOf(n);
             text.setText(str);       
          }
       for(i=10;i<=15;i++)               
    	   if(e.getSource()==b[i])
    	   {     
    		   m1=Double.parseDouble(text.getText());
    		   if(k==10)  m2=m1+m2; 
               else if(k==11) m2=m2-m1;
               else if(k==12) m2=m2*m1;
               else if(k==13) m2=m2/m1;
               else if(k==14) m2=m1;
               else if(k==15) m2=Math.pow(m2, m1);
               else m2=m1;   
               if(i==10)  k=10;      
               else if(i==11) k=11;
               else if(i==12) k=12;
               else if(i==13) k=13;
               else if(i==14) k=14;
               else k=15;
               str=String.valueOf(m2);
               text.setText(str);         
               n=0;          
               break;    
          } 
       if(e.getSource()==b[17])
       {       
    	  m1=Double.parseDouble(text.getText());
          if(k==10)  m2=m1+m2;     
          else if(k==11) m2=m2-m1;
          else if(k==12) m2=m2*m1;
          else if(k==13) m2=m2/m1;
          else if(k==14) m2=Math.sqrt(m2);
          else if(k==15)  m2=Math.pow(m2, m1);
          str=String.valueOf(m2);
           text.setText(str);     
           n=0;           
           k=0;        
      }
      if(e.getSource()==b[16])
      {      
    	 k=0;
    	 n=0;
    	 m1=0;
         m2=0;
         text.setText("0");
         }
     }
    }


