package com.admin.tool.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import com.admin.tool.annotation.UniqueUsername;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue
	private Integer id;

	@Size(min = 3, message = "Name must be at least 3 characters!")
	@Column(unique = true)
	@UniqueUsername(message = "Such username already exists!")
	private String name;

	@Size(min = 1, message = "Invalid email address!")
	@Email(message = "Invalid email address!")
	private String email;

	@Size(min = 5, message = "Name must be at least 5 characters!")
	private String password;

	private boolean enabled;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable
	private List<Role> roles; 

	@OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
	private List<Blog> blogs;
		
	@OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
	private List<UploadedFile> uploadedFiles;
	
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="EEE, dd MMM yyyy HH:mm:ss zzz")
	private Date createdDate;
		
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="EEE, dd MMM yyyy HH:mm:ss zzz")
	private Date lastLoginDate;
	
	private String secretKey;
	
	private Boolean twoFactorAuthInitialised;
	
	private boolean isAuthenticated; 

	private boolean isVerified; 
	
	private boolean isVerifiedError; 
	
	private boolean isResetTwoFactorAuth;
	
	public User(){
		
	}
	
	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public List<Blog> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}

	public Boolean getTwoFactorAuthInitialised() {
		return twoFactorAuthInitialised;
	}

	public void setTwoFactorAuthInitialised(Boolean twoFactorAuthInitialised) {
		this.twoFactorAuthInitialised = twoFactorAuthInitialised;
	}

	public boolean isAuthenticated() {
		return isAuthenticated;
	}

	public void setAuthenticated(boolean isAuthenticated) {
		this.isAuthenticated = isAuthenticated;
	}

	public boolean isVerified() {
		return isVerified;
	}

	public void setVerified(boolean isVerified) {
		this.isVerified = isVerified;
	}

	public boolean isVerifiedError() {
		return isVerifiedError;
	}

	public void setVerifiedError(boolean isVerifiedError) {
		this.isVerifiedError = isVerifiedError;
	}

	public boolean isResetTwoFactorAuth() {
		return isResetTwoFactorAuth;
	}

	public void setResetTwoFactorAuth(boolean isResetTwoFactorAuth) {
		this.isResetTwoFactorAuth = isResetTwoFactorAuth;
	}
	
	public List<UploadedFile> getUploadedFile() {
		return uploadedFiles;
	}

	public void setUploadedFile(List<UploadedFile> uploadedFiles) {
		this.uploadedFiles = uploadedFiles;
	}
}
