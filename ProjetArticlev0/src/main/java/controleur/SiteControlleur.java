package controleur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import repository.ArticleRepository;

@Controller
public class SiteControlleur {

	@Autowired
	private ArticleRepository repository;
	
	@RequestMapping("/acc")
	public String hello(Model model)
	{
		return "site/acc";
	}
	@RequestMapping("/biblio")
	public String hello2(Model model)
	{
		model.addAttribute("articles",repository.findAll());
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
