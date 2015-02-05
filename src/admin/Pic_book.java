package admin;

import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;
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
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;

import admin_sql.Information;
import admin_sql.Users_arranges;

public class Pic_book extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Pic_book() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ServletOutputStream out = response.getOutputStream();

		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		try {
			List<String> list = new ArrayList<String>();
			boolean bool=false;
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

		JFreeChart chart = ChartFactory.createBarChart3D("各类别图书阅读量排行榜", "类别",
				"阅读量", dataset, PlotOrientation.VERTICAL, true, true, false);

		chart.setTitle(new TextTitle("各类别图书阅读量排行榜", new Font("黑体", Font.ITALIC,
				22)));
		CategoryPlot plot = (CategoryPlot) chart.getPlot();

		CategoryAxis categoryAxis = plot.getDomainAxis();
		categoryAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		categoryAxis.setCategoryLabelPositions(CategoryLabelPositions.UP_45);
		categoryAxis.setTickLabelFont(new Font("宋体", Font.BOLD, 18));

		NumberAxis numberAxis = (NumberAxis) plot.getRangeAxis();
		numberAxis.setLabelFont(new Font("宋体", Font.BOLD, 20));

		String url = "pic/pic2.jpg";
		FileOutputStream file = new FileOutputStream(
				"D:/unreal_path/book/WebRoot/" + url);

		ChartUtilities.writeChartAsPNG(file, chart, 400, 400, null);
		out.println(url);
		file.flush();
		file.close();
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ServletOutputStream out = response.getOutputStream();
		DefaultPieDataset dataset = new DefaultPieDataset();

		int counts = 0;

		try {

			List<String> list = new ArrayList<String>();
			Users_arranges zongti = new Users_arranges();
			zongti.class_forname();
			list = zongti.select_all();
			counts = zongti.count;
			Iterator<String> iter = list.iterator();

			while (iter.hasNext()) {
				dataset.setValue(iter.next(), Integer.parseInt(iter.next()));// 各书籍所占比例
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		StandardChartTheme standardChartTheme = new StandardChartTheme("CN");
		standardChartTheme.setExtraLargeFont(new Font("隶书", Font.BOLD, 20));
		standardChartTheme.setRegularFont(new Font("宋书", Font.PLAIN, 15));
		standardChartTheme.setLargeFont(new Font("宋书", Font.PLAIN, 15));

		ChartFactory.setChartTheme(standardChartTheme);
		JFreeChart chart = ChartFactory.createPieChart(
				"各类书籍所占比例,总计数为" + String.valueOf(counts), (PieDataset) dataset,
				true, true, false);

		PiePlot pp = (PiePlot) chart.getPlot();
		pp.setLabelGenerator(new StandardPieSectionLabelGenerator("{2}"));
		String url = "pic/pic1.jpg";

		FileOutputStream file = new FileOutputStream(
				"D:/unreal_path/book/WebRoot/" + url);
		// response.setContentType("image/png");
		ChartUtilities.writeChartAsPNG(file, chart, 400, 400);
		file.flush();
		file.close();
		out.println(url);
		out.flush();
		out.close();

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
