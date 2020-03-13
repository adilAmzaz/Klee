package controleur;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.User;

@RestController
@RequestMapping("/apilist")
public class ListRestControleur {

	ArrayList<User> liste = new ArrayList<User>();
	
	@GetMapping("/list")
	public ArrayList<User> liste1()
	{
		return liste;
	}
	
	@PostMapping("/list")
	public void add(@RequestBody User user)
	{
		liste.add(user);
	}
}
