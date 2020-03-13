package controleur;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import model.User;

@Controller
public class SiteControlleur {

	@RequestMapping("/acc")
	public String hello(Model model)
	{
		return "site/acc";
	}
	@RequestMapping("/biblio")
	public String hello2(Model model)
	{
		return "site/biblio";
	}
	@RequestMapping("/conn")
	public String hello3(Model model)
	{
		
		return "site/conn";
	}
	@RequestMapping("/insc")
	public String hello4(Model model)
	{
		
		return "site/insc";
	}

}
