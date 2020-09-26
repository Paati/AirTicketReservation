package com.arpit.Airticket.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingRepo extends JpaRepository<Booking,Integer > {
	
List<Booking> findAll();
}
