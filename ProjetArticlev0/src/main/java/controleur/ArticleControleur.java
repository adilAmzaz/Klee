//package controleur;
//
//import java.util.ArrayList;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import DAO.ArticleDAO;
//import model.Article;
//import model.User;
//import repository.ArticleRepository;
//
//@Controller
//@RequestMapping("/article")
//public class ArticleControleur {
//
//	@Autowired
//	private ArticleDAO dao;
//	
//	@Autowired
//	private ArticleRepository repository;
//	
//	@RequestMapping("/articles")
//	public String getAll(Model model)
//	{
//		model.addAttribute("articles",dao.findAll());
//		return "article/articles";
//	}
//	
//	@GetMapping("/add")
//	public String get(Model model, HttpServletRequest ht)
//	{
//		model.addAttribute("article", new Article());
//		ht.getSession().setAttribute("articles", dao.findAll());
//		return "/article/add";
//	}
//	
//
//	
//
//	
//	@GetMapping("/filtre")
//	public String filtre(Model model, HttpServletRequest ht)
//	{
//		model.addAttribute("marque",new String());
//		ht.getSession().setAttribute("articles", dao.findAll());
//		ht.getSession().setAttribute("marques", dao.findAllMarques());
//		return "/article/filtre";
//	}
//	
//	@PostMapping("/filtre")
//	public String m6b(Model model, @ModelAttribute(name = "marque")String marque, HttpServletRequest ht)
//	{
//		ht.getSession().setAttribute("articles", dao.findAll());
//		ht.getSession().setAttribute("marques", dao.findAllMarques());
//		ht.getSession().setAttribute("marque",marque);
//		return "article/filtre";
//	}
//	
//	
//	
//	
//	
//	@PostMapping("/add")
//	public String infoDisplay(@ModelAttribute(name="article") Article article, HttpServletRequest ht) {
//		
//		dao.create(article);
//		ht.getSession().setAttribute("articles", dao.findAll());
//		return "/article/add";
//	}
//	
//}
