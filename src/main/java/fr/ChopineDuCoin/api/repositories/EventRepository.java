package fr.ChopineDuCoin.api.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.ChopineDuCoin.api.model.Event;

@Repository
public interface EventRepository extends CrudRepository<Event, Integer> {
	Event findByName( final String name );
	Event findById( final int id );
	@Query(value = "SELECT * FROM Event WHERE enabled = true ORDER BY RAND() LIMIT 1", nativeQuery = true)
	Event getRandomEvent();
	@Query(value = "SELECT * FROM Event WHERE date > NOW()", nativeQuery = true)
	Iterable<Event> findAllFutur();
	
}