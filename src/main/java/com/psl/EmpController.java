package com.psl;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;







import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.xmlbeans.impl.regex.REUtil;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;

@Controller  
public class EmpController {  
    @Autowired  
    EmpDao dao;  
    
   
     
    
    @RequestMapping(value="savefile",method=RequestMethod.POST)  
    public ModelAndView saveimage( @RequestParam CommonsMultipartFile file,  
    								HttpSession session,
    								@FormDataParam("file") InputStream uploadedInputStream,
    								@RequestParam("folder") String application,
    								@RequestParam("subfolder") String module
   	 		
    							) throws Exception{  
  
    	
    	 	 	  String filename = file.getOriginalFilename(); 
				  String uploadedFileLocation ="C:\\Models\\"+application+ "\\" +module+"\\"+filename;
				  System.out.println("filename:"+filename+ " " +uploadedFileLocation);
    
		  
				 dao.uploadfile(uploadedInputStream,uploadedFileLocation,application,module);
				 System.out.println(uploadedInputStream +  " " +application + "  "+module);
				 
				 
				 if(!application.equals("000"))
				 {
					 System.out.println(module+  " equal");
				 }
				 else
				 {
					 System.out.println(module+   " not equal");
				 }
				  
			
				
				  if(!application.equals("000") || !module.equals("000")) 
					
					  	  return new ModelAndView("UploadScriptPage2","filesuccess","File successfully saved!");
				  else
									  
					  return new ModelAndView("UploadScriptPage2","filefail","please select fields");
    }  
    
    
 

    static String appname;
    static String startdate;
    static String enddate;
    
    @RequestMapping(value="viewRecords1")
    public static void getData1(HttpServletRequest request,HttpServletResponse response) throws IOException
    {
    	 appname=request.getParameter("folder");
    	 startdate=request.getParameter("startdatetime");
    	 enddate=request.getParameter("enddatetime");
    	 
    	// response.sendRedirect("viewRecords1/1");
    	 response.sendRedirect("displayRecords");
    	
    }
    
    @RequestMapping(value="displayRecords")  
	public  ModelAndView showRecords1() throws SQLException {

			
		System.out.println(appname +  " "+startdate +  " "+enddate);
			
		 
			int total=2,total1=0,pageid1=0;  
			List<Application> list1=null;
			List<Application> sublist=null;
			 list1=dao.getRecordsnew(appname,startdate,enddate);
			
			System.out.println("------------------------"+list1.size());
			
			for(Application a:list1)
			{
				System.out.println(a.getAppName() +  " "+a.getFileName()+"  " +a.getPathLink());
			}
			
			 return new ModelAndView("displayRecords","list",list1); 
			//return new ModelAndView("design","list",list1);
			

		}
		
	
	
	
    
  
    
      
   /* @RequestMapping(value="viewEmp/{pageid}")  
    
    public ModelAndView edit(@PathVariable int pageid){  
    	
    	
    	System.out.println("pageid:"+pageid + " name:"+name);
        int total=5;  
        if(pageid==1){}  
        else{  
            pageid=(pageid-1)*total+1;  
        }  
        List<Login> list=dao.getEmployeesByPage(pageid,total);  
          
        return new ModelAndView("viewEmp","list",list);  
        
    }  
  
    
    */
    
 
    
	

/*	 @RequestMapping(value="viewRecords1/{pageid}")  
	public  ModelAndView showRecords(
			@PathVariable int pageid
			) throws SQLException {

			
		System.out.println(pageid+ "  "+appname +  " "+startdate +  " "+enddate);
			
		 
			int total=2,total1=0,pageid1=0;  
			List<Application> list1=null;
			List<Application> sublist=null;
			
			/* if(pageid==1){
				 
				 list1=dao.getRecords(pageid,total,appname,startdate,enddate);
			 }  
		        else{  
		            pageid=(pageid-1)*total+1;  
		            list1=dao.getRecords(pageid,total,appname,startdate,enddate);
		        }  
		      */
			
			
			/*if(pageid==1){ 
				
				list1=dao.getRecords(pageid,total,appname,startdate,enddate);
				if(list1.size()>=total)
				{
					sublist=list1.subList(0, total);
				}
				else
				{
					
					sublist=list1.subList(0, list1.size());
				}
			}  
			else{  
			  
				//pageid1=(pageid-1)*total+1;
				
				list1=dao.getRecords(pageid1+1,pageid1+total-1,appname,startdate,enddate); 
				if(list1.size()>=total*pageid)
				{
					sublist=list1.subList((total*pageid)-pageid, total*pageid);
				}
				else
				{
					sublist=list1.subList((total*pageid)-pageid,list1.size());
				}
				//list1=dao.getRecords(pageid1+1,pageid1+total-1,appname,startdate,enddate); 
			}  
	           
			
			/*for(Application a:list1)
			{
				System.out.println(a.getAppName() +  " "+a.getFileName());
			}*/
			
		/*	for(Application a:sublist)
			{
				System.out.println(a.getAppName() +  " "+a.getFileName());
			}
			
			 return new ModelAndView("viewRecords1","list",sublist);  
			

		}*/
		
    
	 
	 
	 
	 
	  
	    
	    
		

		
    
}  
