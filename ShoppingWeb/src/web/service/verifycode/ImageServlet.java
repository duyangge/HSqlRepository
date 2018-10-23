package web.service.verifycode;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ImageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*用到的类：
		1、BufferedImage图像数据缓冲区
		
		2、Graphics绘制图片
		3、Color获取颜色
		4、Random生成随机数
		5、ImageIo输出图片*/
	/*1、BufferedImage图像数据缓冲区*/
	BufferedImage bi = new BufferedImage(70, 40,BufferedImage.TYPE_INT_RGB);
	/*2、Graphics绘制图片*/
	Graphics g = bi.getGraphics();
	/*Color(int r, int g, int b) 
	创建具有指定红色、绿色和蓝色值的不透明的 sRGB 颜色，这些值都在 (0 - 255) 的范围内。
                    得到画笔工具，并设置画板的背景颜色及大小*/
	Color c = new Color(120, 190, 200);
	g.setColor(c);
	/*fillRect(int x, int y, int width, int height) 
	填充指定的矩形。*/
	g.fillRect(0, 0, 70, 40);
	/**
	 * 设置验证码组成的字符
	 */
	
	char[] ch = "abcdefghigklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".toCharArray();
	
	/*4、Random生成随机数*/
	
	Random r = new Random();
	StringBuffer sb = new StringBuffer();
	for(int i=0;i<4;i++) {
		int index = r.nextInt(ch.length);
	/*	设置字体、大小*/
		Font f = new Font("宋体",Font.BOLD, 25);
		g.setFont(f);
		//为四个随机数设置随机的颜色
		g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
		/**
		 * drawString(String str, int x, int y) 
      	使用此图形上下文的当前字体和颜色绘制由指定 string 给定的文本。
		 */
		g.drawString(ch[index]+"", i*15+3, 18);
		sb.append(ch[index]);
	}
	request.getSession().setAttribute("piccode", sb.toString());//将生成的字符串保存到session中
	/**
	 * write(RenderedImage im, String formatName, OutputStream output) 
	          使用支持给定格式的任意 ImageWriter 将一个图像写入 OutputStream。
	 */
	ImageIO.write(bi, "JPG", response.getOutputStream());
		
	}

}
