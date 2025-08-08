package ticketRaisePackage;

public class TicketModel5414 {//id, studentId, name, email, contactNo, faculty, inqType, subject, inquiry
	private int id;
	private String studentId;
	private String name;
	private String email;
	private String contactNo;
	private String faculty;
	private String inqType;
	private String subject;
	private String inquiry;
	
	public TicketModel5414(int id, String studentId, String name, String email, String contactNo, String faculty,
			String inqType, String subject, String inquiry) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.name = name;
		this.email = email;
		this.contactNo = contactNo;
		this.faculty = faculty;
		this.inqType = inqType;
		this.subject = subject;
		this.inquiry = inquiry;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getInqType() {
		return inqType;
	}

	public void setInqType(String inqType) {
		this.inqType = inqType;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getInquiry() {
		return inquiry;
	}

	public void setInquiry(String inquiry) {
		this.inquiry = inquiry;
	}
	
}
