package com.psl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class FolderContents{
public  void generateJson()
{
	
File f=new File("c:\\Models");
String[] folders=f.list();

JSONObject mainObj=new JSONObject();
JSONArray arr=new JSONArray();
for(String s:folders)
{
	JSONObject folderObj=new JSONObject();
	folderObj.put("name",s);
	folderObj.put("id",s);
	File f1=new File("C:\\Models\\"+s);
	JSONObject subObj=new JSONObject();
			
		if(f1.isDirectory())
		{
				System.out.println(s + " is a folder");
			    String[] folders1=f1.list();
			  
			    JSONArray subfolderArray=new JSONArray();
			   
			    for(String file:folders1)
			    {
			    	JSONObject obj=new JSONObject();
			    	obj.put("name",file);
			    	obj.put("id",file);
		   		
			    	File f2=new File("C:\\Models\\"+s+"\\"+file);
			    	System.out.println("f2:"+f2);
		   						   		
			    	JSONArray fileArray=new JSONArray();
		   					   	
			    	if(f2.isDirectory())
			    	{
			    		System.out.println(file + " is a sub folder");
		   												
			    		String[] folders2=f2.list();
					    System.out.println("files" +  " "+folders2.length);
					   	for(String file1:folders2)
						{
							System.out.println("file:"+file1);
							JSONObject fileObj=new JSONObject();
							
							fileObj.put("name",file1);
							fileObj.put("id",file1);
						 	fileArray.add(fileObj);
						}
					 }
		   		
			    	obj.put("files",fileArray);
			    	subfolderArray.add(obj);
			    				   		   		
			    	}
			    	
			    	folderObj.put("subfolders", subfolderArray);
								  					   
		  	}
		arr.add(folderObj);
 	   		
}


mainObj.put("folder",arr);
System.out.println("main:-------------"+mainObj);

try  {
			 FileWriter filewriter = new FileWriter("C:\\Users\\manisha_holambe\\lworkspace_luna1\\Performance\\WebContent\\test.json");

	            filewriter.write(mainObj.toJSONString());
	            filewriter.flush();

	   } catch (IOException e) {
	            e.printStackTrace();
	  }
	
}   
  	  	


public void createpath(String folder)
{
	System.out.println("folder:"+folder);
}

public static void main(String[] args) throws IOException {
	

	FolderContents f=new FolderContents();
	f.generateJson();
	

}		
}
