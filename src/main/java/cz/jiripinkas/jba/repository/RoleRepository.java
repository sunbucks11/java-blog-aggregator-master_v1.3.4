package cz.jiripinkas.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.Role;


public interface RoleRepository extends JpaRepository<Role, Integer>{

	Role findByName(String name);
}
