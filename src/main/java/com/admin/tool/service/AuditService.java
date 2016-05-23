package com.admin.tool.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.tool.entity.Audit;
import com.admin.tool.repository.AuditRepository;

@Service
@Transactional
public class AuditService {
	
	@Autowired
	private AuditRepository auditRepository;
	
	public List<Audit> findAll(){
		return auditRepository.findAll();
	}
	
	public void update(Date createdDate, String source, String ipAddress, String email, String description, String imageType){
		Audit audit = new Audit();
		audit.setCreatedDate(createdDate);
		audit.setSource(source);
		audit.setIpAddress(ipAddress);
		audit.setEmail(email);
		audit.setDescription(description);
		audit.setImageType(imageType);
		
		auditRepository.save(audit);
	}
}
