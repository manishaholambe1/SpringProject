package com.psl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ws.rs.core.Response;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmpDao {

 JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}     
	  
	
	
	
	
	
	public void uploadfile(InputStream uploadedInputStream,String uploadedFileLocation,String application,String module)
	{
	
	
			writeToFile(uploadedInputStream, uploadedFileLocation);
	
			String output = "File uploaded to : " + uploadedFileLocation;

			System.out.println("connected");
	
	
		DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
		Date date = new Date();
		System.out.println(dateFormat.format(date)); 
    	String currDate=dateFormat.format(date);
		
    	
    	int cnt=0,max=0;
	    String maxReportCntQuery="select MAX(ReportNo) from Performance_UploadedScripts1";
		cnt=template.queryForInt(maxReportCntQuery);
		System.out.println("count:"+cnt);
		
	    max=cnt+1;
	    	
	    System.out.println("count:"+cnt+ "  max:"+max);
	   String query1="insert into Performance_UploadedScripts1 values('"+max+"','"+application+"','"+module+"','"+uploadedFileLocation+"','"+currDate+"')";  
	
	   template.update(query1); 
	
	 
		//return check;
	

	}

// save uploaded file to new location
private void writeToFile(InputStream uploadedInputStream,
	String uploadedFileLocation) {

	int count=0;
	//boolean checkeuploaded=false;
	try {
		OutputStream out = new FileOutputStream(new File(
				uploadedFileLocation));
		int read = 0;
		byte[] bytes = new byte[1024];

		out = new FileOutputStream(new File(uploadedFileLocation));
		while ((read = uploadedInputStream.read(bytes)) != -1) {
			out.write(bytes, 0, read);
			//count++;
		}
		out.flush();
		out.close();
	} catch (IOException e) {

		e.printStackTrace();
	}

	
	/*if(count>0)
	{
		checkeuploaded=true;
	}
	
	return checkeuploaded;*/
}

	
	
	
	 
	 public  List<Application> getRecordsnew(String appname,String startDate,String endDate) throws SQLException{ 
	    	
	    	System.out.println(appname+ "  "+startDate+  " "+endDate);
	        String sql="select * from performance_uploadedScripts1 where  ReportDate between '" +startDate+"' and '"+endDate+"' and ApplicationName='"+appname+"'";
	    	
	    	System.out.println(sql);
	    	return template.query(sql,new RowMapper<Application>(){  
		        public Application mapRow(ResultSet rs, int row) throws SQLException {  
		          Application app=new Application();
		          app.setReportNO(rs.getInt(1));  
		          
	                app.setAppName(rs.getString(2));  
	                app.setModuleName(rs.getString(3));
	                app.setFileName(rs.getString(4));
	                app.setReportdate(rs.getDate(5));
	                
	                
	                String s1="file:///"+app.getFileName();
	        		System.out.println("*****************************"+s1);
	        		app.setPathLink(s1);
	                
	                
	                System.out.println(app.getAppName()+  "  "+app.getFileName() +"  "+app.getPathLink());
	                
	                System.out.println(app.getAppName()+  "  "+app.getFileName());
		            return app;  
		        }  
		    });  
	    }
}
