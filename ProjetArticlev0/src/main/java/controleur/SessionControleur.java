package controleur;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.User;

@Controller
@RequestMapping("/session")
public class SessionControleur {



	@GetMapping("/add")
	public String formDisplay(Model model, HttpServletRequest ht) {
		model.addAttribute("user", new User());
		if(ht.getSession().getAttribute("users")==null)
		ht.getSession().setAttribute("users", new ArrayList<User>());
		return "/session/sessionadd";
	}

	
	@PostMapping("/add")
	public String infoDisplay(Model model, @ModelAttribute(name="user") User user, HttpServletRequest ht) {
		ArrayList<User> users = (ArrayList<User>) ht.getSession().getAttribute("users");
		users.add(user);
		ht.getSession().setAttribute("lstuser", users);
		return "/session/sessionadd";
	}
	
	@RequestMapping("/view")
	public String m2b() {
		return "session/sessionview";
	}
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping("/add2")
//	public String m1b(Model model,HttpServletRequest ht) {
//		ArrayList<String> liste = new ArrayList<String>();
//		liste.add("aa");
//		liste.add("bb");
//		liste.add("cc");
//		ht.getServletContext().setAttribute("lst2", liste);
//		return "session/sessionadd";
//	}
//	
//	@RequestMapping("/view2")
//	public String m2b() {
//		return "session/sessionview";
//	}
}
