package repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Article;
import model.Auteur;
import model.Ligne;
import model.Panier;

public interface LigneRepository extends JpaRepository<Ligne, Integer> {

	
}
