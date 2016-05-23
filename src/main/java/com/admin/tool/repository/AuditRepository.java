package com.admin.tool.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.Audit;

public interface AuditRepository extends JpaRepository<Audit, Integer>{
	Audit findByName(String name);	
}
