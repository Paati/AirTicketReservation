package com.arpit.Airticket.model;



import org.springframework.data.jpa.repository.JpaRepository;

public interface FlightRepo extends JpaRepository<Flight, Integer> {

	

	Flight findByDoj(String doj);

}
