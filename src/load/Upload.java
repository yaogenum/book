package load;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.jsp.PageContext;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class Upload {
	Upload(){}
	public boolean upload() throws ServletException{
		
		SmartUpload smart=new SmartUpload();
		PageContext pageContext = null;
		
		smart.initialize(pageContext);
		smart.setAllowedFilesList("txt,chm,jsp,jpg,html,pdf,htm");

	
		
		return true;
	}
}
//zip,rar,exe,bat,jsp