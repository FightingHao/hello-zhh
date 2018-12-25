package com.haohao.project.bean;

public class BookType {
	private Integer typeId;

	private String typeName;

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName == null ? null : typeName.trim();
	}

	public BookType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookType(Integer typeId, String typeName) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "BookType [typeId=" + typeId + ", typeName=" + typeName + "]";
	}

}