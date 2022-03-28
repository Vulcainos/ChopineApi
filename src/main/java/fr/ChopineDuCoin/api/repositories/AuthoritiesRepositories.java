package fr.ChopineDuCoin.api.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.ChopineDuCoin.api.model.Authorities;

@Repository
public interface AuthoritiesRepositories extends CrudRepository<Authorities, String> {

}