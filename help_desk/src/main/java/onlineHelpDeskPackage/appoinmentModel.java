package onlineHelpDeskPackage;

import java.util.List;

public class appoinmentModel {
	public int appID;
	public String stName;
	public String stID;
	public String stEmail;
	public String lecName;
	public String lecID;
	public String reason;
	public String mode;
	
	public appoinmentModel(int appID, String stName, String stID, String stEmail, String lecName, String lecID,
			String reason, String mode) {
		super();
		this.appID = appID;
		this.stName = stName;
		this.stID = stID;
		this.stEmail = stEmail;
		this.lecName = lecName;
		this.lecID = lecID;
		this.reason = reason;
		this.mode = mode;
	}

	public int getAppID() {
		return appID;
	}

	public void setAppID(int appID) {
		this.appID = appID;
	}

	public String getStName() {
		return stName;
	}

	public void setStName(String stName) {
		this.stName = stName;
	}

	public String getStID() {
		return stID;
	}

	public void setStID(String stID) {
		this.stID = stID;
	}

	public String getStEmail() {
		return stEmail;
	}

	public void setStEmail(String stEmail) {
		this.stEmail = stEmail;
	}

	public String getLecName() {
		return lecName;
	}

	public void setLecName(String lecName) {
		this.lecName = lecName;
	}

	public String getLecID() {
		return lecID;
	}

	public void setLecID(String lecID) {
		this.lecID = lecID;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public static List<appoinmentModel> getById(String appID) {
		
		return null;
	}

	
	
	

}
