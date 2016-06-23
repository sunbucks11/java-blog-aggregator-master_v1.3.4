package com.admin.tool.entity;

import java.util.Date;

//import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "uploaded_file")
public class UploadedFile {

  private Integer id;
  private String name;
  private String location;
  private Long size;
  private String type;
  private User user;
  private Date lastModified;
  

  //@Lob
  //@Column(columnDefinition = "LONGBLOB")
 // @Lob(type = LobType.BLOB)
  //@Lob(type = LobType.BLOB)
  //@Lob
  //@Column(name="IMAGE", nullable=false, columnDefinition="blob")
  private byte[] img_data;


  
    
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public Integer getId() {
    return id;
  }

  @Column(nullable = false)
  public String getName() {
    return name;
  }

  @Column(nullable = false)
  public String getLocation() {
    return location;
  }

  @Column()
  public Long getSize() {
    return size;
  }

  @Column(nullable = false)
  public String getType() {
    return type;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public void setSize(Long size) {
    this.size = size;
  }

  public void setType(String type) {
    this.type = type;
  }
  
  
  
  
  @Lob
  @Column(name="IMAGE", nullable=false, columnDefinition="blob")
  public byte[] getImg_data() {
	return img_data;
	}
  
  
	public void setImg_data(byte[] img_data) {
		this.img_data = img_data;
	}
	
	
	@ManyToOne
    @JoinColumn(name = "user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	  
    @Column(name = "LAST_MODIFIED")
	@Temporal(TemporalType.TIMESTAMP)
    public Date getLastModified() {
        return lastModified;
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }
  
}
