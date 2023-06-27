package studentportal.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.print.DocFlavor.READER;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import studentportal.beans.FileBean;
import studentportal.beans.LoginBean;
import studentportal.beans.NoticeBean;
import studentportal.beans.SemesterBean;
import studentportal.dao.LoginDao;
import studentportal.beans.registrationbean;

@Controller
public class LoginController {
	@Autowired
	LoginDao dao;
	String path;

	// static String fileDescription;
	// static FileUpload fileUploadObj;
	static String saveDirectory = "uploadedFiles";
	static ModelAndView modelViewObj;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)

	public String display(Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new LoginBean());
		return "Login";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)

	public String display1(@ModelAttribute("lb") registrationbean bean, Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new registrationbean());
		return "registration";
	}

	@RequestMapping(value = "/updtnotice", method = RequestMethod.GET)

	public String display11(@ModelAttribute("lb") NoticeBean bean, Model model) {
		System.out.println("Update Notice");
		model.addAttribute("command", new NoticeBean());
		return "updtnotice";
	}

	@RequestMapping(value = "/Semester", method = RequestMethod.GET)

	public String display2(Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new SemesterBean());
		return "Semester";
	}

	@RequestMapping(value = "/updt", method = RequestMethod.GET)

	public String updtdd(Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new SemesterBean());
		return "updt";
	}

	@RequestMapping(value = "/updtsem", method = RequestMethod.GET)

	public String display5(Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new registrationbean());
		return "updtsem";
	}

	@RequestMapping(value = "/updtsem", method = RequestMethod.POST)

	public String display7(registrationbean bean, Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new registrationbean());
		int i = dao.insertquery2(bean);
		return "updtsem";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)

	public String display3(@ModelAttribute("lb") registrationbean bean, Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new registrationbean());
		int i = dao.insertquery(bean);
		return "registration";
	}

	@RequestMapping(value = "/save2", method = RequestMethod.POST)

	public String display3(@ModelAttribute("lb") NoticeBean bean, Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new NoticeBean());
		int i = dao.insertquery3(bean);
		return "updtnotice";
	}

	/*
	 * @RequestMapping(value = "/insertmark", method = RequestMethod.GET)
	 * 
	 * public String updtdddd(SemesterBean bean, Model model) {
	 * System.out.println("dddddddddd"); model.addAttribute("command", new
	 * SemesterBean()); int i = dao.insertquery3(bean); return "insertmark"; }
	 */
	@RequestMapping(value = "/insertmark", method = RequestMethod.GET)

	public String display18(@ModelAttribute("lb") SemesterBean bean, Model model) {
		System.out.println("Insertmark");
		model.addAttribute("command", new SemesterBean());
		return "insertmark";
	}

	@RequestMapping(value = "/save4", method = RequestMethod.POST)

	public String display17(@ModelAttribute("lb") SemesterBean bean, Model model) {
		System.out.println("INSERTING MARKS OF A STUDENT - ");
		model.addAttribute("command", new SemesterBean());
		int i = dao.insertquery1(bean);
		return "insertmark";
	}

	@RequestMapping(value = "/notdel", method = RequestMethod.GET)

	public String display20(@ModelAttribute("lb") NoticeBean bean, Model model) {
		System.out.println("Notice List Deleted.");
		model.addAttribute("command", new NoticeBean());
		return "notdel";
	}

	@RequestMapping(value = "/deletenotice.html", method = RequestMethod.GET)

	public String display15() {
		System.out.println("Notice list Deleted.");
		int i = dao.deletequery();
		return "redirect:/notdel";
	}

	@RequestMapping(value = "/deletestud", method = RequestMethod.GET)

	public String display16(@RequestParam int id) {
		System.out.println("Delete Student : " + id);
		int i = dao.deletequery2(id);
		return "redirect:/Admin";
	}

	@RequestMapping(value = "/deletemark", method = RequestMethod.GET)

	public String display17(@RequestParam int id) {
		System.out.println("Delete Mark : " + id);
		int i = dao.deletequery3(id);
		return "redirect:/marks";
	}

	@RequestMapping(value = "/log", method = RequestMethod.POST)
	public String save(@ModelAttribute("lb") LoginBean bean, BindingResult result, Model model, HttpSession session, HttpServletRequest request,
			HashMap<String, Object> temp) {

		String message = "";
		System.out.println("LOGIN PAGE DETAILS....");

		String captcha = (String) session.getAttribute("CAPTCHA");
		if (captcha == null || (captcha != null && !captcha.equals(bean.getCaptcha()))) {
			bean.setCaptcha("");
			model.addAttribute("command", new LoginBean());

			model.addAttribute("message", "Captcha does not match");
			return "Login";
		} else {
			boolean ret = dao.matchQuery(bean);
			if (ret == true) {
				message = "successful";
				temp.put("msg", message);
				String identity = dao.getIdentity(bean.getUsername());
				System.out.println("identity " + identity);

				if (identity == "Teacher" || identity.equals("Teacher")) {

					List<LoginBean> list = dao.getList4();
					System.out.println("inside Teacher");
					
					String teacerId = dao.getteacerId(bean.getUsername());
					
					System.out.println("id :" + teacerId);
					session.setAttribute("id", teacerId);
					request.setAttribute("id", teacerId);

					session.setAttribute("username", bean.getUsername());
					model.addAttribute("list", list);

					return "Admin";
				} else if (identity == "Student" || identity.equals("Student")) {
					System.out.println("inside Student");
					List<LoginBean> list = dao.getList(bean.getUsername());
					System.out.println("username :  " + bean.getUsername());

					System.out.println("list  " + list);
					model.addAttribute("list", list);
					session.setAttribute("username", bean.getUsername());

					return "welcom";
				}

				// String id=list.get(0).getId();

			} else {
				message = "****THE USERNAME AND PASSWORD YOU HAVE ENTERED DOESN'T EXIST****";
				temp.put("msg", message);
				return "error";
			}
		}
		return captcha;
	}

	/*
	 * @RequestMapping("welcom") public ModelAndView uploadForm(){ return new
	 * ModelAndView("welcom");
	 * 
	 * }
	 */

	@RequestMapping(value = "savefile", method = RequestMethod.POST)
	public ModelAndView filesave(HttpServletRequest request, @RequestParam CommonsMultipartFile file,
			HttpSession session) throws IllegalStateException, IOException {
		// System.out.println("gyana");
		ServletContext context;
		context = session.getServletContext();

		String path = context.getRealPath("file");
		String filename = file.getOriginalFilename();
		if (!file.getOriginalFilename().equals("")) {
			FileBean fb = new FileBean();
			fb.setFileName(file.getOriginalFilename());
			// fb.setFileDescription(fileDescription);
			// fb.setData(file.getBytes());
			System.out.println("fbb" + fb);
			System.out.println("fb" + fb);
		}
		System.out.println(path + " " + filename);
		if (file.isEmpty()) {

			return new ModelAndView("welcom", "filesuccess", "file is empty");
		} else {

			byte[] bytes = file.getBytes();

			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(new File(path + File.separator + filename)));
			// String
			// path1=session.getServletContext().getRealPath("")+File.separator+filename;
			// BufferedOutputStream st=new BufferedOutputStream(new FileOutputStream(new
			// java.io.File(path+" "+filename)) );
			stream.write(bytes);
			System.out.println(stream);
			// System.out.println(st);
			stream.flush();
			stream.close();

			return new ModelAndView("welcom", "filesuccess", filename + "File successfully saved!");

		}

	}

	/*
	 * @RequestMapping(value="/view",method=RequestMethod.GET)
	 * 
	 * public String show(Model model){ System.out.println("dddddddddd");
	 * model.addAttribute("command",new SemesterBean()); return "view";
	 */

	@RequestMapping(value = "/view", method = RequestMethod.GET)

	public String display5(@ModelAttribute("lb") SemesterBean bean, Model model, HttpSession session) {

		System.out.println("id  " + session.getAttribute("id"));

		String sec = (String) session.getAttribute("username");

		System.out.println(sec + "MARK DETAILS ");
		List<SemesterBean> list = dao.getList1(sec);
		System.out.println("list  " + list);
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
	 * 
	 * list); model.addAttribute("list", list); return "welcom"; }
	 */
	@RequestMapping(value = "/welcom", method = RequestMethod.GET)

	public String register(@ModelAttribute("lb") registrationbean bean, Model model, HttpSession session) {
		System.out.println("dddddddddd");
		String usernamne = (String) session.getAttribute("username");
		System.out.println("Profile Of Usernamne :" + usernamne);
		model.addAttribute("command", new registrationbean());
		return "welcom";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)

	public String logout1(Model model) {

		model.addAttribute("command", new LoginBean());
		System.out.println("Log Out.");
		return "Login";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)

	public String aboutt(Model model) {

		model.addAttribute("command", new registrationbean());
		System.out.println("About Page.");
		return "about";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)

	public String contactt(Model model) {

		model.addAttribute("command", new registrationbean());
		System.out.println("Contact US Page Details");
		return "contact";
	}

	@RequestMapping(value = "/Admin", method = RequestMethod.GET)

	public String dispaly9(@ModelAttribute("lb") LoginBean bean, Model model, HttpSession session) {
		/* List<LoginBean> list = dao.getList(); */

		List<LoginBean> list = dao.getList4();
		/*
		 * System.out.println("list  " + list);
		 */

		model.addAttribute("list", list);

		System.out.println("Admin Page - All users data");

		return "Admin";
	}

	@RequestMapping(value = "/notice", method = RequestMethod.GET)

	public String noticed(@ModelAttribute("lb") NoticeBean bean, Model model, HttpSession session) {

		List<NoticeBean> list = dao.getList6();
		model.addAttribute("list", list);
		System.out.println("Notice Board Details");
		return "notice";
	}

	@RequestMapping(value = "/marks", method = RequestMethod.GET)

	public String dispaly10(@ModelAttribute("lb") LoginBean bean, Model model, HttpSession session) {

		List<SemesterBean> list1 = dao.getList5();

		model.addAttribute("list1", list1);
		System.out.println("Admin Page - All Users Marks");

		return "marks";

	}

	@RequestMapping(value = "/editstud.html", method = RequestMethod.GET)

	public ModelAndView editstuddd(Model mode, @RequestParam int id) {
		System.out.println("Edit Student : " + id);
		LoginBean i = dao.getList9(id);
		System.out.println(i);
		mode.addAttribute("i", i);

		return new ModelAndView("/updtsem");

	}

	@RequestMapping(value = "/save7.html", method = RequestMethod.POST)

	public String display28(@ModelAttribute("i") LoginBean bean, Model model, int id, BindingResult result) {
		System.out.println("Edit Student profile :" + id);
		LoginBean i = dao.getList9(id);
		model.addAttribute("i", i);

		int j = dao.updatequery(bean, id);
		return "editupdtd";
	}

	@RequestMapping(value = "/editmark.html", method = RequestMethod.GET)

	public ModelAndView editmark(Model mode, @RequestParam int id) {
		System.out.println("Edit Student Mark : " + id);
		SemesterBean i = dao.getList10(id);
		System.out.println(i);
		mode.addAttribute("i", i);

		return new ModelAndView("/updtmark");

	}

	@RequestMapping(value = "/save8.html", method = RequestMethod.POST)

	public String display29(@ModelAttribute("i") SemesterBean bean, Model model, int id, BindingResult result) {
		System.out.println("Edit Student Mark :" + id);
		SemesterBean i = dao.getList10(id);
		model.addAttribute("i", i);

		int j = dao.updatequery2(bean, id);
		return "editupdtd";
	}

	@RequestMapping(value = "/updtmark", method = RequestMethod.GET)

	public String displa3(Model model) {
		System.out.println("dddddddddd");
		model.addAttribute("command", new SemesterBean());
		return "updtmark";
	}

	
	@RequestMapping(value = "/editupdtd", method = RequestMethod.GET)

	public String editupdtd(Model model) {

		model.addAttribute("command", new LoginBean());
		System.out.println("DETAILS UPDATED.");
		return "editupdtd";
	}
	/*
	 * @RequestMapping(value = "/save", method = RequestMethod.POST)
	 * 
	 * public String display3(@ModelAttribute("lb") registrationbean bean, Model
	 * model) { System.out.println("dddddddddd"); model.addAttribute("command", new
	 * registrationbean()); int i = dao.insertquery(bean); return "registration"; }
	 */

	/*
	 * @RequestMapping(value = "/File.jsp", method = RequestMethod.GET)
	 * 
	 * public String noticedup(@ModelAttribute("lb") NoticeBean bean, Model model,
	 * HttpSession session) { System.out.println("Notice Board Details fetching");
	 * List<NoticeBean> list = dao.getList6(); model.addAttribute("list", list);
	 * System.out.println("notice-upper-serial"); return "File.jsp"; }
	 */


	
	
	
	
	@RequestMapping(value = "/editprof", method = RequestMethod.GET)

	public String displa(@ModelAttribute("i") LoginBean bean, Model model) {
		System.out.println("Edit Teacher Profile Deatils..");
		model.addAttribute("i", new LoginBean());
		return "editprof";
	}

	
	@RequestMapping(value = "edit.html", method = RequestMethod.GET)

	public ModelAndView editTeach(Model mode, @RequestParam int id) {
		System.out.println("Edit Teacher Profile : " + id);
		LoginBean i = dao.getList11(id);
		System.out.println(i);
		mode.addAttribute("i", i);

		return new ModelAndView("/editprof");

	}

	@RequestMapping(value = "/save9.html", method = RequestMethod.POST)

	public String Teach(@ModelAttribute("i") LoginBean bean, Model model, int id, BindingResult result) {
		System.out.println("Edit Teacher profile :" + id);
		LoginBean i = dao.getList11(id);
		model.addAttribute("i", i);

		int j = dao.updatequery4(bean, id);
		return "editupdtd";
	}
	 

	
	
	
	
	
	
	
	/*
	 * @RequestMapping(value = "/editprof", method = RequestMethod.POST)
	 * 
	 * public String editprof(@ModelAttribute("i") LoginBean bean, Model model) {
	 * System.out.println("Update Teacher Profile Details...");
	 * model.addAttribute("i", new LoginBean()); return "/save9.html"; }
	 * 
	 * 
	 * 
	 * @RequestMapping(value = "/save9.html", method = RequestMethod.POST)
	 * 
	 * public ModelAndView dis(@ModelAttribute("i") LoginBean bean, Model model, int
	 * id, BindingResult result) {
	 * System.out.println("Edit Teacher profile of id :"+ id) ; LoginBean i=
	 * dao.getList11(id); System.out.println(i) ; model.addAttribute("i", i);
	 * 
	 * 
	 * int j = dao.updatequery4(bean, id);
	 * 
	 * return new ModelAndView("/editprof"); }
	 */

	/*
	 * public String dis(@ModelAttribute("i") LoginBean bean, Model model, int id,
	 * BindingResult result) { System.out.println("Edit Teacher profile of id :" +
	 * id); LoginBean i= dao.getList11(id); model.addAttribute("i", i);
	 * 
	 * int j = dao.updatequery4(bean, id); return "editprof"; }
	 */
}
