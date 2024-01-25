 package dto;

import javax.imageio.ImageIO;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Base64;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	private String studentName;
	private long studentPhoneNumber;
	private String studentEmail;
	private double studentFee;
	@Lob
	private byte[] inputStream;
	
public String getInputStream() {
	String base64Image = Base64.getEncoder().encodeToString(this.inputStream);
		return base64Image;
	}
	//
//	public Image getInputStream() throws IOException {
//
//		ByteArrayInputStream inStreambj = new ByteArrayInputStream(inputStream);
//		BufferedImage newImage = ImageIO.read(inStreambj);
//		Image img = newImage;
//		return img;
//	}
	public void setInputStream(byte[] inputStream) {
		this.inputStream = inputStream;
	}
	@ManyToOne
	@JoinColumn
	private Admin admin;
	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public long getStudentPhoneNumber() {
		return studentPhoneNumber;
	}
	public void setStudentPhoneNumber(long studentPhoneNumber) {
		this.studentPhoneNumber = studentPhoneNumber;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public double getStudentFee() {
		return studentFee;
	}
	public void setStudentFee(double studentFee) {
		this.studentFee = studentFee;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
}
