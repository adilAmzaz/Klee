package controleur;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Article;
import repository.ArticleRepository;

@Controller
public class SiteControlleur {

	@GetMapping("/acc")
	public String hello(Model model)
	{
		
		return "site/acc";
	}
	@GetMapping("/biblio")
	@Transactional
	public String hello2(Model model)
	{
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository artRepo = context.getBean(ArticleRepository.class);
		List<Article> liste = artRepo.findAll();
		model.addAttribute("liste",liste);
		//System.out.println(liste);
		for (Article article : liste) {
			System.out.println(article);
		}
		return "site/cartes/index";
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
