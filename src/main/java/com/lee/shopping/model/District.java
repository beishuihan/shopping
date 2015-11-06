package com.lee.shopping.model;

import java.util.List;
import java.util.Map;

public class District  {
	//行政区id
	private String id;
	//行政区名称
	private String name;
	
	private List<District> children;

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

	public List<District> getChildren() {
		return children;
	}

	public void setChildren(List<District> children) {
		this.children = children;
	}


	
}
