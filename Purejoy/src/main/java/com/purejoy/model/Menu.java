package com.purejoy.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

@Entity
@Table(name="sys_menu")
public class Menu {
	private final static Logger LOG = LogManager.getLogger(Menu.class);
	
	@Id
	@Column(length=50)
	private String id;
	
	@Column(length=20)
	private String name;
	
	@Column(length=200)
	private String icon;
	
	@Column(length=200)
	private String url;
	
	@ManyToOne
	@JoinColumn(name="parent_id")
	private Menu parent;

	
	@Column(name="idx",length=11)
	private Integer index;

	@Column(length=30)
	private String no;

	@Transient
	private boolean checked = false;
	

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
	}



	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	
}
