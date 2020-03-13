package controleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloControleur {

	@RequestMapping("/hello")
	public String hello(@RequestParam(name="nom",required = false, defaultValue = "Noooooooooo") String nom, Model model)
	{
		model.addAttribute("c", "coucou");
		model.addAttribute("n",nom);
		return "hello";
	}
	
	@RequestMapping("/hello/{age}")
	public String helloage(Model model, @PathVariable(name = "age") int age) {
		model.addAttribute("age", age);
		return "helloage";
	}
	
	@RequestMapping("/helloinfo")
	public String helloinfo(@RequestParam(name="nom") String nom,@RequestParam(name="prenom") String prenom, Model model)
	{
		model.addAttribute("p",prenom);
		model.addAttribute("n",nom);
		return "helloinfo";
	}

	@RequestMapping("/hello2")
	public String m()
	{
		return "hellobis";
	}
}
