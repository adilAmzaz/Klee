import java.time.LocalDate;
import java.time.Month;

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
		Auteur Tibo = new Auteur(0,"Martin","George ",LocalDate.of(1948, Month.SEPTEMBER, 20));
		Auteur jk = new Auteur(1,"Rowling","JK",LocalDate.of(1965, Month.JULY, 31));
		Auteur ks = new Auteur(2,"King","Stephen ",LocalDate.of(1947, Month.SEPTEMBER, 21));
		Auteur sensei = new Auteur(3,"Oda","Eiichiro ",LocalDate.of(1975, Month.JANUARY, 1));
		Auteur tkubo = new Auteur(4,"Kubo","Tite",LocalDate.of(1977, Month.JUNE, 26));
		
		ar.save(tkubo);
		ar.save(ks);
		ar.save(sensei);
		ar.save(jk);
		ar.save(Tibo);
		
		
		
		Article p = new Article(0,"Trone de Fer",Tibo,LocalDate.of(1996, Month.AUGUST, 1), "Fantaisie", "Editeur 1", 15,"got.jpg");
		pr.save(p);
	
		Article p1 = new Article(1,"Harry Potter",jk,LocalDate.of(1998, Month.JULY, 2), "Fantaisie", "Editeur 1", 25,"harry.jpg");
		pr.save(p1);
		
		Article p2 = new Article(2,"CA",ks,LocalDate.of(1986, Month.SEPTEMBER, 15), "Horreur", "Editeur 1", 10,"CAA.jpg");
		pr.save(p2);
		
		Article p3 = new Article(3,"One Piece",sensei,LocalDate.of(1997, Month.DECEMBER, 24), "Manga", "Editeur 2", 6,"OP.jpg");
		pr.save(p3);
		
		Article p4 = new Article(4,"Bleach",tkubo,LocalDate.of(2001, Month.AUGUST, 20), "Manga", "Editeur 2", 6,"bleach.jpg");
		pr.save(p4);
	
	
	
	
	
	}
	
}
