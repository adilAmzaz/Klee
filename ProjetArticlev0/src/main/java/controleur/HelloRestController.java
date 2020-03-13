package controleur;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.User;

@RestController
@RequestMapping("/api")
public class HelloRestController {

//	@REQUESTMAPPING(VALUE = "/HELLO")	
//	PUBLIC STRING HELLO() {
//		RETURN "HELLO WORLD";
//	}
//	
	@GetMapping("/hello")
	public ResponseEntity<String> hellob()
	{
		return new ResponseEntity<>("hello world", HttpStatus.NOT_FOUND);
	}
	
	@GetMapping("/hello/{username}")
	public String hellov2 (@PathVariable(name = "username") String username){
		return "hello "+username;
	}

	@GetMapping("/hello/{nom}/{prenom}")
	public User hellov3(@PathVariable(name = "nom")String nom,@PathVariable(name = "prenom")String prenom)
	{
		return new User(nom,prenom);
	}
	
	
}
