import java.time.LocalDate;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Article;
import model.Auteur;
import repository.ArticleRepository;
import repository.AuteurRepository;

public class main {

	public static void main(String[] args) {
		RFCreate();
	}
	


	private static void RFCreate() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		ArticleRepository pr = context.getBean(ArticleRepository.class);
		AuteurRepository ar = context.getBean(AuteurRepository.class);
		Auteur Tibo = new Auteur(0,"NOM","PRENOM",LocalDate.now());
		ar.save(Tibo);
		Article p = new Article(1,"NOM",Tibo,LocalDate.now(), "CATEGORIE", "EDITEUR", 15);
		pr.save(p);
	}
	
}
