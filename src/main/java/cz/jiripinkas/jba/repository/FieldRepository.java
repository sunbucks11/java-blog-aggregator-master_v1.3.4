package cz.jiripinkas.jba.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.Field;

public interface FieldRepository  extends JpaRepository<Field, Integer>{

	Field findByName(String name);	
}
