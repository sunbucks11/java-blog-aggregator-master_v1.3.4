package com.admin.tool.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.tool.entity.Field;
import com.admin.tool.repository.FieldRepository;

@Service
@Transactional
public class FieldService {

	@Autowired
	private FieldRepository fieldRepository;

	public List<Field> findAll() {
		return fieldRepository.findAll();
	}

	public Field findOne(String fieldName) {
		return fieldRepository.findByName(fieldName);
	}

	public void save(Field field) {
		fieldRepository.save(field);
	}

}
