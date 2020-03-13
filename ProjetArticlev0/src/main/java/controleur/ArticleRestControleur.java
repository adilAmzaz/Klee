//package controleur;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import DAO.ArticleDAO;
//import model.Article;
//import model.User;
//import repository.ArticleRepository;
//
//@RestController
//@RequestMapping("/api")
//public class ArticleRestControleur {
//
//	
//	@Autowired
//	private ArticleDAO dao;
//	
//	@Autowired
//	private ArticleRepository rep;
//	
//	@GetMapping("/article")
//	public List<Article> liste1()
//	{
//		return dao.findAll();
//		//return rep.findAll();
//	}
//	
//	@PostMapping("/article")
//	public void add(@RequestBody Article art)
//	{
//		dao.create(art);
//		//rep.save(art);
//	}
//	
//	@PutMapping("/article")
//	public void update(@RequestBody Article art)
//	{
//		dao.update(art);
//		//rep.save(art); 
//	}
//	
//	@GetMapping("/article/{id}")
//	public Article findById(@PathVariable(name = "id")int id)
//	{
//		return dao.findById(id);
//	//	return rep.findById(id).get();
//	}
//	
//	@DeleteMapping("/article/{id}")
//	public void deleteById(@PathVariable(name = "id")int id)
//	{
//		dao.deleteById(id);
//		//rep.deleteById(id);
//	}
//	
//}
