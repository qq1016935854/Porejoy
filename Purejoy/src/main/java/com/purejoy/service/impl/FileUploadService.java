package com.purejoy.service.impl;
import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.purejoy.service.IFileUploadService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;



@Service
public class FileUploadService implements IFileUploadService {
	private final static Logger LOG = LogManager.getLogger(FileUploadService.class);

	private final static String UPLOAD_DIR = "upload";

	private static final WoResultCode SAVE = new WoResultCode(201,"上传文件失败");
	
	@Override
	public String uploadFile(MultipartFile file, HttpServletRequest request) {
		// 获取服务端upload实际路径
		String path = request.getSession().getServletContext().getRealPath(UPLOAD_DIR);
		File dir = new File(path);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		String fileName = file.getOriginalFilename();
		File targetFile = new File(path,fileName);
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			LOG.error("",e);
			throw new WoException (e,SAVE);
		}
		return UPLOAD_DIR + "/" + fileName;
	}
}
