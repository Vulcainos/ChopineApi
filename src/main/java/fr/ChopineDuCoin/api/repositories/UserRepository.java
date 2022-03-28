package fr.ChopineDuCoin.api.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import fr.ChopineDuCoin.api.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String> {

}