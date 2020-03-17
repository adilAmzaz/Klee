package controleur;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Article;
import model.Ligne;
import model.Panier;
import model.User;
import model.Utilisateur;
import repository.ArticleRepository;
import repository.LigneRepository;
import repository.UtilisateurRepository;

@Controller
public class SiteControlleur {

	@Autowired
	private ArticleRepository repository;
	
	@Autowired
	private UtilisateurRepository repositoryU;
	
	@Autowired
	private LigneRepository repositoryP;
	
	
	@RequestMapping("/acc")
	public String hello(Model model)
	{
		return "site/acc";
	}
	@RequestMapping("/biblio")
	@Transactional
	public String hello2(Model model)
	{
		model.addAttribute("liste",repository.findAll());
		return "site/biblio";
	}
	
	@GetMapping("/conn")
	public String connectionGet(Model model, HttpServletRequest ht)
	{
		model.addAttribute("login", "");
		model.addAttribute("mdp", "");		
		return "site/conn";
	}
	
	@PostMapping("/conn")
	public String connectionPost(@RequestParam(name="login") String login,@RequestParam(name="mdp") String mdp,Model model, HttpServletRequest ht)
	{
		List<Utilisateur> a = repositoryU.findByPseudoAndMdp(login,mdp);	
		
		if(a.size()>=1)
		{
			ht.getSession().setAttribute("utilisateur", a.get(0));
			return "site/acc";	
		}
		else
		{
			return "site/acc";
		}
	}
	
	@GetMapping("/panier")
	public ModelAndView list2(HttpServletRequest ht) {
		ModelAndView modelAndView = new ModelAndView("site/panier", "articles", repository.findAll());
		modelAndView.addObject("a", new Article());
		modelAndView.addObject("nbArticle", 0);
		if(ht.getSession().getAttribute("Panier")==null)
		ht.getSession().setAttribute("Panier", new Panier());
		return modelAndView;
	}
	
	
	@PostMapping("/panier")
	public ModelAndView aa(@ModelAttribute(name = "a") Article a,HttpServletRequest ht, @RequestParam("nbArticle") int nbArticle) {
	
		Panier p = (Panier) ht.getSession().getAttribute("Panier");
		//ArrayList<Ligne> np = p.getLignes();
		//np.add(new Ligne(repository.findById(a.getId()).get(), nbArticle));
		p.AjouterLigne(new Ligne(repository.findById(a.getId()).get(), nbArticle));
		System.out.println(nbArticle);
		//p.setLignes(np);
		ht.getSession().setAttribute("Panier", p);
		System.out.println(a);
		ModelAndView modelAndView = new ModelAndView("site/panier","Panier", ht.getSession().getAttribute("Panier"));
		modelAndView.addObject("articles", repository.findAll());

		return modelAndView;
	}
	
	
	@GetMapping("/insc")
	public String hello4(Model model)
	{
		model.addAttribute("utilisateur",new Utilisateur());
		return "site/insc";
	}
	
	@PostMapping("/insc")
	public String env(@ModelAttribute(name="utilisateur") Utilisateur utilisateur, Model model)
	{
		repositoryU.save(utilisateur);
		return "site/acc";
	}	
	
	@GetMapping("/valide")
	public String valide(HttpServletRequest ht)
	{
		ht.getSession().getAttribute("Panier");
		return "site/valide";
	}
	
	@PostMapping("/valide")
	public String commande(HttpServletRequest ht)
	{
		Panier p = (Panier) ht.getSession().getAttribute("Panier");
		Utilisateur u = (Utilisateur) ht.getSession().getAttribute("utilisateur");
		for (Ligne l : p.getLignes()) {
			l.setUtilisateur(u);
			repositoryP.save(l);
		}
		
		ht.getSession().setAttribute("Panier", new Panier());
		return "site/acc";
	}
	
	
//	@GetMapping("/panier")
//	public String panieraccs(Model model, HttpServletRequest ht) {
//		return "/session/sessionadd";
//	}
}
