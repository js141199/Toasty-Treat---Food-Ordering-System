package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class CartVO {

	@Id
	@Column(name = "id")
	public int id;

	@Column(name="productName")
	public String productName;
	
	@Column(name="quantity")
	public int quantity;
	
	@Column(name="status")
	public boolean status = true;
	
	@ManyToOne
	@JoinColumn(name = "subcategoryId")
	private SubCategoryVO subcategoryVO;

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SubCategoryVO getSubcategoryVO() {
		return subcategoryVO;
	}

	public void setSubcategoryVO(SubCategoryVO subcategoryVO) {
		this.subcategoryVO = subcategoryVO;
	}

}
