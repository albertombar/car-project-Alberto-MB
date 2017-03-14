package tech.tarragona.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import tech.tarragona.spring.model.Car;
import tech.tarragona.spring.repository.CarRepository;
import tech.tarragona.spring.service.CarService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class CarController {

	@Autowired
	CarRepository carRepository;

	@Autowired
	CarService CarService;

	@GetMapping
	public String findAllProducts(Model model) {
		model.addAttribute("cars", carRepository.findAll());
		return "listarCoches";

	}

	@GetMapping(value = "/addCar")
	public String redirectAddCar(Model model) {
		model.addAttribute("car", new Car());
		return "addCar";

	}

	@GetMapping(value = "/{matricula}")
	public String redirectModify(Model model ,@PathVariable String matricula) {
		model.addAttribute("car", carRepository.findByMatricula(matricula));
		return "modificarDatos";

	}

	@PostMapping(value = "/{matricula}")
	public String Modify(Model model,Car car ,@PathVariable String matricula) {
		CarService.addCar(car);
		findAllProducts(model);
		return "listarCoches";
	}
	@PostMapping(value = "/addCar")
	public String addCar(Car car, Model model) {
		System.out.println("CAR :" + car.getMatricula());
		CarService.addCar(car);
		findAllProducts(model);
		return "listarCoches";
	}

}
