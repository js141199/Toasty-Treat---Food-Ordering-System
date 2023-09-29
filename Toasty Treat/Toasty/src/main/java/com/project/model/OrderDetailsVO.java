/*package com.project.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetails")
public class OrderDetailsVO {
	
	
	@Id
	@Column(name="id")
	public int id;
	
	@Column(name="name")
	public String name;
	
	@Column(name="number")
	public String number;
	
	@Column(name="email")
	public String email;
	
	@Column(name="amount")
	public int amount;
	
	@Column(name="orderStatus")
	public boolean orderStatus = true; 
	
	
	@Column(name="cartInfo")
	public List<CartVO> cartInfo;
	
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public boolean isOrderStatus() {
		return orderStatus;
	}


	public void setOrderStatus(boolean orderStatus) {
		this.orderStatus = orderStatus;
	}


	public List<CartVO> getCartVO() {
		return cartInfo;
	}


	public void setCartVO(List<CartVO> cartVO) {
		this.cartInfo = cartVO;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	
	
	
	
}
*/