package com.snosack.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.snosack.savetravels.models.Travel;
import com.snosack.savetravels.repositories.TravelRepository;

@Service
public class TravelService {
	
private final TravelRepository travelRepository;

public TravelService(TravelRepository travelRepository) {
	this.travelRepository = travelRepository;
}

public List<Travel> allTravels() {
	return travelRepository.findAll();
}

public Travel createTravel(Travel t) {
	return travelRepository.save(t);
}

public Travel findTravel(Long id) {
	Optional<Travel> optionalTravel = travelRepository.findById(id);
	if(optionalTravel.isPresent()) {
		return optionalTravel.get();
	} else {
		return null;
	}
}

public Travel updateTravel(Travel t) {
	return travelRepository.save(t);
}

public void deleteTravel(Long id) {
	travelRepository.deleteById(id);
}

}
