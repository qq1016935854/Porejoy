package com.purejoy.service;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;
public interface IFileUploadService {

	/**
	 * 
	 * @param file
	 * @param request
	 * @return	服务端保存文件后的相对路径
	 */
	public String uploadFile(MultipartFile file , HttpServletRequest request);
	
}
