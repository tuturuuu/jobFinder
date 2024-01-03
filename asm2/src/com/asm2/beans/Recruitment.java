package com.asm2.beans;

public class Recruitment {
	
	@Override
	public String toString() {
		return "Recruitment [recruitId=" + recruitId + ", address=" + address + ", createdAt=" + createdAt
				+ ", description=" + description + ", experience=" + experience + ", quantity=" + quantity + ", salary="
				+ salary + ", status=" + status + ", title=" + title + ", type=" + type + ", companyId=" + companyId
				+ ", categoryId=" + categoryId + ", deadline=" + deadline + "]";
	}
	
	private int recruitId;
    private String address;
    private String createdAt;
    private String description;
    private String experience;
    private int quantity;
    private String salary;
    private int status;
    private String title;
    private String type;
    private int companyId;
    private int categoryId;
    private String deadline;
	
    public int getRecruitId() {
		return recruitId;
	}
	public void setRecruitId(int recruitId) {
		this.recruitId = recruitId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
    
}
