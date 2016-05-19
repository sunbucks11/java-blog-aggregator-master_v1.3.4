package cz.jiripinkas.jba.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Field;
import cz.jiripinkas.jba.repository.FieldRepository;

@Service
@Transactional
public class FieldService {

	@Autowired
	private FieldRepository fieldRepository;
	
	public List<Field> getFields(){	
		return fieldRepository.findAll();
	}		
}
