package com.ap.recsim.repository;

import org.springframework.data.repository.CrudRepository;

import com.ap.recsim.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
    User findByEmail(String email);
}
