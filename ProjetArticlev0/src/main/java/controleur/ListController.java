package controleur;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.User;

@Controller
@RequestMapping("/user")
public class ListController {

	ArrayList<User> lstuser = new ArrayList<User>();

	@RequestMapping("/ajout")
	public String form(Model model) {
		model.addAttribute("u", new User());
		return "user/list";
	}

	@PostMapping("/ajout")
	public String infoform(@ModelAttribute(name="user") User user, Model model) {
		

		lstuser.add(user);
		model.addAttribute("lstuser", lstuser);
		return "user/list";
	}

}
