package tech.tarragona.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tech.tarragona.spring.model.Car;
import tech.tarragona.spring.repository.CarRepository;

@Service
public class CarService {

	@Autowired
	CarRepository carRepository;

	@Transactional
	public List<Car> getProducts() {
		return carRepository.findAll();
	}

	@Transactional
	public Car findById(String matricula) {
		return carRepository.findOne(matricula);
	}

	@Transactional
	public Car addCar(Car car) {
		return carRepository.save(car);
	}
	
	

}
