package com.psl;

import java.util.Date;

public class Application {

	
	private int reportNO;
	private String appName;
	private String moduleName;
	private String fileName;
	private Date reportdate;
	
	private String pathLink;
	
	
	public Application() {
		// TODO Auto-generated constructor stub
	}
	public Application(int reportNO,String appName, String moduleName, String fileName) {
		super();
		this.reportNO=reportNO;
		this.appName = appName;
		this.moduleName = moduleName;
		this.fileName = fileName;
	}
	
	
	
	
	
	public int getReportNO() {
		return reportNO;
	}
	public void setReportNO(int reportNO) {
		this.reportNO = reportNO;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Date getReportdate() {
		return reportdate;
	}
	public void setReportdate(Date reportdate) {
		this.reportdate = reportdate;
	}
	public String getPathLink() {
		return pathLink;
	}
	public void setPathLink(String pathLink) {
		this.pathLink = pathLink;
	}
	
	
	
	
	
	
	
}
