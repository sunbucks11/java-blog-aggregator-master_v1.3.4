package com.admin.tool.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "role")
public class Role {

	@Id
	@GeneratedValue
	private Integer id;

	private String name;
	
	private int isBuiltIn;
	
	@JsonIgnoreProperties(ignoreUnknown = true)
	private String backColor;
	
	@JsonIgnoreProperties(ignoreUnknown = true)
	private String foreColor;
	
	private String settings;

	//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="dd-MM-yyyy,HH:00", timezone="CET")
	//@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="EEE, dd MMM yyyy HH:mm:ss zzz")
	//@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createdDate;
	
	private Date modifiedDate;
		
	@ManyToMany(mappedBy = "roles")
	private List<User> users;

	public int getIsBuiltIn() {
		return isBuiltIn;
	}

	public void setIsBuiltIn(int isBuiltIn) {
		this.isBuiltIn = isBuiltIn;
	}

	public String getBackColor() {
		return backColor;
	}

	public void setBackColor(String backColor) {
		this.backColor = backColor;
	}

	public String getForeColor() {
		return foreColor;
	}

	public void setForeColor(String foreColor) {
		this.foreColor = foreColor;
	}

	public String getSettings() {
		return settings;
	}

	public void setSettings(String settings) {
		this.settings = settings;
	}


	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	
	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
