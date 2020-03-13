package controleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccueilControleur {
	
	@RequestMapping("/accueil")
	public String hello(Model model)
	{
		return "Accueil/Accueil";
	}
	

}
