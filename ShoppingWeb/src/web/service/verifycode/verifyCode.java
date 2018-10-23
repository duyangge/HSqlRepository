package web.service.verifycode;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;
import javax.imageio.ImageIO;
public class verifyCode {
	private int w=70;//设置图片的宽度大小
	private int h=35;//设置图片的高度大小
	private Random r=new Random();
	//{"宋体","华文楷体","黑体","华文新魏","华文隶书","微软雅黑","楷体_GB2312"}
	//可选字体
	private String[] fontNames= {"宋体","华文楷体","黑体","华文新魏","华文隶书","微软雅黑","楷体_GB2312"};
	private String codes="23456789abcdefghjkmnopqrstuvwxyzABCDEFGKMNOPQUVWXYZ";//可选字符
	private Color bgcolor=new Color(255,255,255);//设置图片背景颜色
	private String text;//图片中的文本内容
	//随机生成字体颜色
	private Color randomColor() {
		int red=r.nextInt(150);
		int green=r.nextInt(150);
		int blue=r.nextInt(150);
		return new Color(red,green,blue);
	}
	//生成随机字体
	private Font randomFont() {
		int index=r.nextInt(fontNames.length);
		String fontName=fontNames[index];
		int style=r.nextInt(4);//生成随机样式，0（无样式），1（粗体），2（斜体），3（粗体+斜体）
		int size=r.nextInt(5)+24;//生成随机字号
		return new Font(fontName,style,size);
		
	}
	//生成随机字符
	private char randomChar() {
		int index=r.nextInt(codes.length());
		return codes.charAt(index);
	}
	//画干扰线
	private void drawLine(BufferedImage image) {
		int num=3;//画三条干扰线
		Graphics2D g2=(Graphics2D) image.getGraphics();
		for(int i=0;i<num;i++) {//生成两个点的坐标，即4个值
			int x1=r.nextInt(w);
			int y1=r.nextInt(h);
			int x2=r.nextInt(w);
			int y2=r.nextInt(h);
			g2.setStroke(new BasicStroke(1.5F));
			g2.setColor(Color.BLUE);//干扰线颜色设置为蓝色
			g2.drawLine(x1, y1, x2, y2);//画线
		}
	}
	public BufferedImage getImage() {
		BufferedImage image=createImage();//创建图片缓冲区
		Graphics2D g2=(Graphics2D)image.getGraphics();//得到绘制环境
		StringBuilder sb=new StringBuilder();//用来装载生成的验证码文本
		//向图片中插入4个字符
		for(int i=0;i<4;i++) {//循环四次，每次生成一个字符
			String s=randomChar()+"";//随机生成一个字符
			sb.append(s);//将字符添加到sb中
			float x=i*1.0f*w/4;//设置当前字符的x坐标
			g2.setFont(randomFont());//设置随机字体
			g2.setColor(randomColor());//设置随机颜色
			g2.drawString(s, x, h-5);//画图
		}
		this.text=sb.toString();//把生成的字符串赋值给text
		drawLine(image);//添加干扰线
		return image;
		
	}
	private BufferedImage createImage() {
		BufferedImage image=new BufferedImage(w,h,BufferedImage.TYPE_INT_RGB);
		Graphics2D g2=(Graphics2D)image.getGraphics();
		g2.setColor(this.bgcolor);
		g2.fillRect(0, 0, w, h);
		return image;
	}
	//返回验证码图片上的文本
	public String getText() {
		return text;
	}
	//保存图片到指定的输出流
	public static void outPut(BufferedImage image,OutputStream out) throws IOException {
		ImageIO.write(image, "JPEG", out);
	}
	
}


