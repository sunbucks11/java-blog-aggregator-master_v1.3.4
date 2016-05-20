package com.admin.tool.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.Field;

public interface FieldRepository  extends JpaRepository<Field, Integer>{

	Field findByName(String name);	
}
