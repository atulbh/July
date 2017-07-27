package com.journaldev.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 * 
 * @author pankaj
 *
 */
@Entity
@Table(name = "PERSON")
public class Person {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotBlank
	private String name;
	@NotBlank
	private String city;
	@NotBlank
	private String skills;

	private String certifications;

	@Email
	private String emailId;
	@NotBlank
	private String marksInGrad;
	@NotBlank
	private String markInInter;
	@NotBlank
	private String marksInHighSchool;

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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getCertifications() {
		return certifications;
	}

	public void setCertifications(String certifications) {
		this.certifications = certifications;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMarksInGrad() {
		return marksInGrad;
	}

	public void setMarksInGrad(String marksInGrad) {
		this.marksInGrad = marksInGrad;
	}

	public String getMarkInInter() {
		return markInInter;
	}

	public void setMarkInInter(String markInInter) {
		this.markInInter = markInInter;
	}

	public String getMarksInHighSchool() {
		return marksInHighSchool;
	}

	public void setMarksInHighSchool(String marksInHighSchool) {
		this.marksInHighSchool = marksInHighSchool;
	}

	@Override
	public String toString() {
		return "Students [id=" + id + ", name=" + name + ", city=" + city + ", skills=" + skills + ", certifications="
				+ certifications + ", emailId=" + emailId + ", marksInGrad=" + marksInGrad + ", markInInter="
				+ markInInter + ", marksInHighSchool=" + marksInHighSchool + "]";
	}

}
