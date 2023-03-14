package com.captcha.util;

import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
 
import java.awt.image.BufferedImage;
 
import javax.imageio.ImageIO;
import javax.servlet.http.*;
 
import java.io.*;
 
 
public class CaptchaGenServlet extends HttpServlet {
 
         public static final String FILE_TYPE = "jpeg";
 
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
 
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Max-Age", 0);
 
            String captchaStr="";
           
            captchaStr=UtkalUtil.generateCaptchaTextMethod2(6);
 
            try {
 
                int width=200;      int height=50;
 
                Color bg = new Color(0,255,0);
                Color fg = new Color(0,0,0);
 
                Font font = new Font("Arial", Font.BOLD, 25);
                BufferedImage cpimg =new BufferedImage(width,height,BufferedImage.OPAQUE);
                Graphics g = cpimg.createGraphics();
                
                g.setFont(font);
                g.setColor(bg);
                g.fillRect(0, 0, width, height);
                g.setColor(fg);
                g.drawString(captchaStr,50,30);   
 
                HttpSession session = request.getSession(true);
                session.setAttribute("CAPTCHA", captchaStr);
 
               OutputStream outputStream = response.getOutputStream();
 
               ImageIO.write(cpimg, FILE_TYPE, outputStream);
               System.out.println("Captcha generated...");
               outputStream.close();
 
            } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("Error : "+e); 
            }
        }
 
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
        	 response.setHeader("Cache-Control", "no-cache");
             response.setDateHeader("Expires", 0);
             response.setHeader("Pragma", "no-cache");
             response.setDateHeader("Max-Age", 0);
  
             String captchaStr="";
            
             captchaStr=UtkalUtil.generateCaptchaTextMethod2(6);
  
             try {
  
                 int width=200;      int height=50;
  
                 Color bg = new Color(0,255,0);
                 Color fg = new Color(0,0,0);
  
                 Font font = new Font("Arial", Font.BOLD, 25);
                 BufferedImage cpimg =new BufferedImage(width,height,BufferedImage.OPAQUE);
                 Graphics g = cpimg.createGraphics();
                 
                 g.setFont(font);
                 g.setColor(bg);
                 g.fillRect(0, 0, width, height);
                 g.setColor(fg);
                 g.drawString(captchaStr,50,30);   
  
                 HttpSession session = request.getSession(true);
                 session.setAttribute("CAPTCHA", captchaStr);
  
                OutputStream outputStream = response.getOutputStream();
  
                ImageIO.write(cpimg, FILE_TYPE, outputStream);
                System.out.println("Captcha generated...");
                outputStream.close();
  
             } catch (Exception e) {
                     e.printStackTrace();
                     System.out.println("Error : "+e); 
             }
        }
 
 }