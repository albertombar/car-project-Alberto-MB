package tech.tarragona.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tech.tarragona.spring.model.Car;

@Repository
public interface CarRepository extends JpaRepository<Car, String> {

	Car findByMatricula(String matricula);

}
