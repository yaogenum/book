package admin;

import java.awt.Color;
import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.DefaultCategoryDataset;

import admin_sql.Information;

public class Infor extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Infor() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ServletOutputStream out = response.getOutputStream();
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		try {
			List<String> list = new ArrayList<String>();
			boolean bool = true;
			Information infor = new Information();
			infor.class_forname();
			list = infor.get_pingjia();
			Iterator<String> iter = list.iterator();
			// 各类别柱图
			while (iter.hasNext()) {
				dataset.addValue(Integer.parseInt(iter.next()),"",
						iter.next());
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		JFreeChart chart = ChartFactory.createBarChart3D("各类别图书评价量排行榜", "书名",
				"评价量", dataset, PlotOrientation.VERTICAL, true, false, false);

		chart.setTitle(new TextTitle("各类别图书评价量排行榜", new Font("黑体", Font.ITALIC,
				22)));
		CategoryPlot plot = (CategoryPlot) chart.getPlot();

		CategoryAxis categoryAxis = plot.getDomainAxis();
		categoryAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		categoryAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45);
		categoryAxis.setTickLabelFont(new Font("宋体", Font.BOLD, 18));
		
		NumberAxis numberAxis = (NumberAxis) plot.getRangeAxis();
		numberAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		//设置柱宽失败，有时间改
		
		
		String url = "pic/pic4.jpg";
		FileOutputStream file = new FileOutputStream(
				"D:/unreal_path/book/WebRoot/" + url);
		ChartUtilities.writeChartAsPNG(file, chart, 400,400, null);
		out.println(url);
		file.flush();
		file.close();
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gb2312");
		request.setCharacterEncoding("gb2312");
		ServletOutputStream out = response.getOutputStream();
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		try {
			List<String> list = new ArrayList<String>();
			boolean bool = true;
			Information infor = new Information();
			infor.class_forname();
			list = infor.select_limit(bool);
			Iterator<String> iter = list.iterator();
			// 各类别柱图
			while (iter.hasNext()) {
				dataset.addValue(Integer.parseInt(iter.next()), iter.next(),
						iter.next());
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		JFreeChart chart = ChartFactory.createBarChart3D("各类别图书下载量排行榜", "类别",
				"下载量", dataset, PlotOrientation.VERTICAL, true, false, false);

		chart.setBackgroundPaint(Color.WHITE);	
		
		chart.setTitle(new TextTitle("各类别图书下载量排行榜", new Font("黑体", Font.ITALIC,
				22)));
		CategoryPlot plot = (CategoryPlot) chart.getPlot();

		CategoryAxis categoryAxis = plot.getDomainAxis();
		categoryAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		categoryAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45);
		categoryAxis.setTickLabelFont(new Font("宋体", Font.BOLD, 18));
		
		NumberAxis numberAxis = (NumberAxis) plot.getRangeAxis();
		numberAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		//设置柱宽
		
		String url = "pic/pic3.jpg";
		FileOutputStream file = new FileOutputStream(
				"D:/unreal_path/book/WebRoot/" + url);
		ChartUtilities.writeChartAsPNG(file, chart, 400,400, null);
		out.println(url);
		file.flush();
		file.close();
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
