package repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Article;
import model.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

	List<Utilisateur> findByPseudoAndMdp(String pseudo,String mdp);

	
//	List<Article> findByPrixBetween(double p1, double p2);
//	List<Article> findByMarqueLike(String param);
}
