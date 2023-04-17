package gyana.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.print.DocFlavor.READER;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import gyana.beans.FileBean;
import gyana.beans.LoginBean;
import gyana.beans.SemesterBean;
import gyana.dao.LoginDao;
import gyana.beans.registrationbean;


@Controller
public class LoginController {
	@Autowired
	LoginDao dao;
	String path;
   
   
	
	// static String fileDescription;
	 //static FileUpload fileUploadObj;
	    static String saveDirectory = "uploadedFiles";  
	    static ModelAndView modelViewObj;
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	
	public String display(Model model){
		System.out.println("dddddddddd");
		model.addAttribute("command",new LoginBean());
		return "Login";
	}
	


@RequestMapping(value="/registration",method=RequestMethod.GET)
	
	public String display1(@ModelAttribute("lb") registrationbean bean,Model model){
		System.out.println("dddddddddd");
		model.addAttribute("command",new registrationbean());
		return "registration";
	}
@RequestMapping(value="/Semester",method=RequestMethod.GET)
	
	public String display2(Model model){
		System.out.println("dddddddddd");
		model.addAttribute("command",new SemesterBean());
		return "Semester";
	}
@RequestMapping(value="/notice",method=RequestMethod.GET)

public String noticed(Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new SemesterBean());
	return "notice";
}

@RequestMapping(value="/updt",method=RequestMethod.GET)

public String updtdd(Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new SemesterBean());
	return "updt";
}

@RequestMapping(value="/updt",method=RequestMethod.POST)

public String updtdddd(SemesterBean bean,Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new SemesterBean());
	int i = dao.insertquery3(bean);
	return "updt";
}

@RequestMapping(value="/updtsem",method=RequestMethod.GET)

public String display5(Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new registrationbean());
	return "updtsem";
}





@RequestMapping(value="/updtsem",method=RequestMethod.POST)

public String display7(registrationbean bean,Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new registrationbean());
	int i = dao.insertquery2(bean);
	return "updtsem";
}

@RequestMapping(value="/save",method=RequestMethod.POST)

public String display3(@ModelAttribute("lb") registrationbean bean,Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new registrationbean());
	int i = dao.insertquery(bean);
	return "registration";
}
@RequestMapping(value="/savel",method=RequestMethod.POST)
public String display4(@ModelAttribute("lb") SemesterBean bean,Model model){
	System.out.println("dddddddddd");
	model.addAttribute("command",new SemesterBean());
	int i = dao.insertquery1(bean);
	return "Semester";
}

	@RequestMapping(value="/log",method=RequestMethod.POST)
	public String save(@ModelAttribute("lb") LoginBean bean,BindingResult result,Model model,HttpSession session,HashMap<String,Object> temp){
	     
		String message="";
		System.out.println("ddddddddddLOOOOOOOOOOOOOOOOOOOOOO");
		
		
		String captcha=(String)session.getAttribute("CAPTCHA");
        if(captcha==null || (captcha!=null && !captcha.equals(bean.getCaptcha()))){
            bean.setCaptcha("");
    		model.addAttribute("command",new LoginBean());

            model.addAttribute("message", "Captcha does not match");
            return "Login";
        }
        else
        {
        	boolean ret=dao.matchQuery(bean);	
        	if(ret==true){
    			message="successful";
    			temp.put("msg",message);
    			 List<LoginBean> list = dao.getList();
    			 System.out.println("list  " +
    					  list);
    			 model.addAttribute("list", list);
    			return "welcom";
    		}else{
    			message="****THE USERNAME AND PASSWORD YOU HAVE ENTERED DOESN'T EXIST****";
    			temp.put("msg",message);
    			return "error";     
    			}
        }
	}
	
	
	
	 
	
	/*
	 * @RequestMapping("welcom") public ModelAndView uploadForm(){ return new
	 * ModelAndView("welcom");
	 * 
	 * }
	 */
	 
	 
	 
	 @RequestMapping(value="savefile",method=RequestMethod.POST)  
	    public ModelAndView filesave(HttpServletRequest request, @RequestParam CommonsMultipartFile file,  HttpSession session) throws IllegalStateException,IOException
	 {  
	  //System.out.println("gyana");
		 ServletContext context;context = session.getServletContext(); 
	    
	     String path = context.getRealPath("file");  
	    String filename = file.getOriginalFilename();  
	   if(!file.getOriginalFilename().equals("")){
			 FileBean fb=new FileBean();
			 fb.setFileName(file.getOriginalFilename());
			 //fb.setFileDescription(fileDescription);
			 //fb.setData(file.getBytes());
			 System.out.println("fbb"+fb);
			 System.out.println("fb"+fb);
	   }
	    System.out.println(path+" "+filename);        
	  if(file.isEmpty()){
		  
				return new ModelAndView("welcom","filesuccess","file is empty");
			}else{
				
				  byte[] bytes = file.getBytes(); 
				   
				  	   BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  new File(path + File.separator + filename)));  
  //String path1=session.getServletContext().getRealPath("")+File.separator+filename;				  	   
				  	  // BufferedOutputStream st=new BufferedOutputStream(new FileOutputStream(new java.io.File(path+" "+filename)) );
				  	 stream.write(bytes);
				  	    System.out.println(stream);
				  	    //System.out.println(st);
				  	  stream.flush();  
				  	stream.close();  
				  	    
		    return new ModelAndView("welcom","filesuccess",filename+"File successfully saved!");  
		    
		  
			
			}
		    
			}
	
			/*
			 * @RequestMapping(value="/view",method=RequestMethod.GET)
			 * 
			 * public String show(Model model){ System.out.println("dddddddddd");
			 * model.addAttribute("command",new SemesterBean()); return "view";
			 */
	 
	
	 @RequestMapping(value="/view",method=RequestMethod.GET)
	 public String display5(@ModelAttribute("lb") SemesterBean bean,Model model){
	 	System.out.println("dddddddddd");
	 	 List<SemesterBean> list = dao.getList1();
		 System.out.println("list  " +
				  list);
		 model.addAttribute("list", list);
		return "view";
	 
	 }
	 
		/*
		 * @RequestMapping(value="/welcom",method=RequestMethod.GET)
		 * 
		 * public String display3(@ModelAttribute("lb") registrationbean bean,Model
		 * model){ System.out.println("dddddddddd"); model.addAttribute("command",new
		 * registrationbean()); return "registration"; }
		 */

	 
		
	
		
		/*
		 * @RequestMapping(value = "/welcom", method = RequestMethod.GET)
		 * 
		 * public String viewdetails(@ModelAttribute("lb") registrationbean bean, Model
		 * model) {
		 * 
		 * List<registrationbean> list = dao.getList(); System.out.println("list  " +
		
		 * list); model.addAttribute("list", list); return "welcom"; }
		 */ 
	 @RequestMapping(value="/welcom",method=RequestMethod.GET)
		
		public String register(@ModelAttribute("lb") registrationbean bean,Model model){
			System.out.println("dddddddddd");
			model.addAttribute("command",new registrationbean());
			return "welcom";
		}
	 @RequestMapping(value="/logout",method=RequestMethod.GET)

	 public String logout1(Model model){
	 	System.out.println("dddddddddd");
	 	model.addAttribute("command",new LoginBean());
	 	return "Login";
	 }
	 @RequestMapping(value="/about",method=RequestMethod.GET)

	 public String aboutt(Model model){
	 	System.out.println("dddddddddd");
	 	model.addAttribute("command",new registrationbean());
	 	return "about";
	 }
	 @RequestMapping(value="/Admin",method=RequestMethod.GET)

	 public String dispaly9(Model model){ 
	 List<LoginBean> list = dao.getList();
	 List<SemesterBean> list1 = dao.getList1();
	 System.out.println("list  " +
			  list);
	 System.out.println("list1  " +
			  list1);
	 model.addAttribute("list", list);
	 model.addAttribute("list1", list1);

	 	System.out.println("dddddddddd");
	 	model.addAttribute("command",new LoginBean());
	 	model.addAttribute("command",new SemesterBean());
	 	return "Admin";
	 }
	 @RequestMapping(value="/marks",method=RequestMethod.GET)

	 public String dispaly10(Model model){ 
	 List<LoginBean> list = dao.getList();
	 List<SemesterBean> list1 = dao.getList1();
	 System.out.println("list  " +
			  list);
	 System.out.println("list1  " +
			  list1);
	 model.addAttribute("list", list);
	 model.addAttribute("list1", list1);

	 	System.out.println("dddddddddd");
	 	model.addAttribute("command",new LoginBean());
	 	model.addAttribute("command",new SemesterBean());
	 	return "marks";
	 }

}
	 


