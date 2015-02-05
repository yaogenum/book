package beasns;

import java.sql.Time;
import java.util.Timer;
import java.util.TimerTask;

public class Cal_miao extends TimerTask {

	public Timer timer;
	public String errors;

	// public boolean bool;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		// this.bool=true;
		this.errors = "qwe";
		System.out.println(this.errors);
	}
	public void start(){
		Cal_miao test = new Cal_miao();
		test.timer = new Timer();
		System.out.println("fralse");
		test.timer.schedule(test, 5000);
		
	}
}
/*



*/