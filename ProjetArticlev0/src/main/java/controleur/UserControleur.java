package controleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;

@Controller
@RequestMapping("/user")
public class UserControleur {

	@RequestMapping("/test")
	public String m()
	{
		return "user/test";
	}
	
	@GetMapping("/frm1")
	public String m6(Model model)
	{
		model.addAttribute("user",new User());
		return "user/form";
	}
	
	@PostMapping("/frm1")
	public String m6b(Model model, @ModelAttribute(name = "user")User user)
	{
		model.addAttribute("user",user);
		return "user/form";
	}
	
	@RequestMapping("/hello")
	public String m2(@RequestParam(name = "nom")String nom,@RequestParam(name = "prenom")String prenom,Model model)
	{
		model.addAttribute("nom",nom);
		model.addAttribute("prenom",prenom);
		return "user/hello";
	}
	
	@RequestMapping("/hellobis")
	public String m3(@RequestParam(name = "nom")String nom,@RequestParam(name = "prenom")String prenom,Model model)
	{
		User u = new User(nom,prenom);
		model.addAttribute("u",u);
		return "user/hellobis";
	}
	
	@RequestMapping("/bonjour")
	public String m3(@ModelAttribute User u,Model model)
	{
		model.addAttribute("u",u);
		return "user/bonjour";
	}
}
