package net.codejava;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student_details")
public class StudentDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String studentName;
	private String rollNo;
	private double CQ1;
	private double CQ2;
	private double CQ3;
	private double CQ4;
	private double total;
	
	public double getCQ4() {
		return CQ4;
	}
	public void setCQ4(double cQ4) {
		CQ4 = cQ4;
	}
	private double CO1;
	private double CO2;
	private double CO3;
	private double CO4;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public double getCQ1() {
		return CQ1;
	}
	public void setCQ1(double cQ1) {
		CQ1 = cQ1;
	}
	public double getCQ2() {
		return CQ2;
	}
	public void setCQ2(double cQ2) {
		CQ2 = cQ2;
	}
	public double getCQ3() {
		return CQ3;
	}
	public void setCQ3(double cQ3) {
		CQ3 = cQ3;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public double getCO1() {
		return CO1;
	}
	public void setCO1(double cO1) {
		CO1 = cO1;
	}
	public double getCO2() {
		return CO2;
	}
	public void setCO2(double cO2) {
		CO2 = cO2;
	}
	public double getCO3() {
		return CO3;
	}
	public void setCO3(double cO3) {
		CO3 = cO3;
	}
	public double getCO4() {
		return CO4;
	}
	public void setCO4(double cO4) {
		CO4 = cO4;
	}
	
	
	
}
