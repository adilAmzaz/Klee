package controleur;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;
import model.Utilisateur;
import repository.ArticleRepository;
import repository.UtilisateurRepository;

@Controller
public class SiteControlleur {

	@Autowired
	private ArticleRepository repository;
	
	@Autowired
	private UtilisateurRepository repositoryU;
	
	
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
	
	@GetMapping("/insc")
	public String hello4(Model model)
	{
		model.addAttribute("utilisateur",new Utilisateur());
		return "site/insc";
	}
	
	@PostMapping("/insc")
	public String env(@ModelAttribute(name="article") Utilisateur utilisateur, Model model)
	{
		repositoryU.save(utilisateur);
		return "site/insc";
	}	
	
	@GetMapping("/panier")
	public String panieraccs(Model model, HttpServletRequest ht) {
		return "/session/sessionadd";
	}
}
