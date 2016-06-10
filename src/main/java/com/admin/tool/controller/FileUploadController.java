package com.admin.tool.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.admin.tool.entity.UploadedFile;
import com.admin.tool.service.FileUploadService;

@Controller
public class FileUploadController {

  @Autowired
  private FileUploadService uploadService;

  @RequestMapping("/images")
  public String home() {

    return "fileUploader";
  }

  @RequestMapping(value = "/upload", method = RequestMethod.POST)
  public @ResponseBody List<UploadedFile> upload(MultipartHttpServletRequest request,
      HttpServletResponse response) throws IOException {

    // Getting uploaded files from the request object
    Map<String, MultipartFile> fileMap = request.getFileMap();

    // Maintain a list to send back the files info. to the client side
    List<UploadedFile> uploadedFiles = new ArrayList<UploadedFile>();

    // Iterate through the map
    for (MultipartFile multipartFile : fileMap.values()) {

      // Save the file to local disk
      saveFileToLocalDisk(multipartFile);

      UploadedFile fileInfo = getUploadedFileInfo(multipartFile);

      // Save the file info to database
      fileInfo = saveFileToDatabase(fileInfo);

      // adding the file info to the list
      uploadedFiles.add(fileInfo);
    }

    return uploadedFiles;
  }


  
  

  /*
  @RequestMapping(value = {"/list"})
  public String listBooks(Map<String, Object> map, HttpServletResponse response,HttpServletRequest request) throws IOException {

    map.put("fileList", uploadService.getImages());

    UploadedFile dataFile = uploadService.getFile(1);
    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
    response.getOutputStream().write(dataFile.getImg_data());
    //response.getOutputStream().close();
    
    map.put("fileList", uploadService.getImages());
    map.put("image", response);
    
    return "listFiles";
  }
*/
  
  
  
  @RequestMapping(value = "/list", method = RequestMethod.GET, produces = "image/jpg")
  public String userRegister(@ModelAttribute("user") @Valid UploadedFile uploadedFile, BindingResult result, ModelMap model) throws Exception {
 // public String listBooks(Map<String, Object> map, HttpServletResponse response,HttpServletRequest request) throws IOException {
  //public @ResponseBody byte[] getFile()  {
	  UploadedFile dataFile = uploadService.getFile(1);
	  byte[] encodeBase64 = Base64.getEncoder().encode(dataFile.getImg_data());
	  String base64Encoded = new String(encodeBase64, "UTF-8");
	  
	  //model.addObject("galleria", usersService.getAllFoto());
	  
	  model.put("image", base64Encoded);
	  
	  //return dataFile.getImg_data();
	  return "listFiles";
  }
  
  
  
  
  
  
 /* 
  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public ModelAndView userRegister(@ModelAttribute("user") @Valid User user, BindingResult result, ModelMap model, @RequestParam("fileData") MultipartFile fileData) throws Exception {
      if (!fileData.isEmpty() && fileData != null) {                
          byte[] bytes = fileData.getBytes();
          user.setFileName(fileData.getOriginalFilename());
          user.setImageFile(bytes);
          byte[] encodeBase64 = Base64.encodeBase64(bytes);
          String base64Encoded = new String(encodeBase64, "UTF-8");
          user.setBase64image(base64encoded);
      }
  }
 */ 
  
  
  
  
  
  
  
  
  
  
  /*
  @RequestMapping(value = {"/list"})
  public String listBooks(Map<String, Object> map) {

    //map.put("fileList", uploadService.listFiles());
    map.put("fileList", uploadService.getImages());

    return "listFiles";
  }
*/
  
  
  @RequestMapping(value = "/get/{fileId}", method = RequestMethod.GET)
  public void getFile(HttpServletResponse response, @PathVariable Integer fileId) {

    //UploadedFile dataFile = uploadService.getFile(fileId);
    UploadedFile dataFile = uploadService.getFile(fileId);

    File file = new File(dataFile.getLocation(), dataFile.getName());

    try {
      response.setContentType(dataFile.getType());
      response.setHeader("Content-disposition", "attachment; filename=\"" + dataFile.getName()
          + "\"");

      FileCopyUtils.copy(FileUtils.readFileToByteArray(file), response.getOutputStream());

    } catch (IOException e) {
      e.printStackTrace();
    }
  }


  private void saveFileToLocalDisk(MultipartFile multipartFile) throws IOException,
      FileNotFoundException {

    String outputFileName = getOutputFilename(multipartFile);

    FileCopyUtils.copy(multipartFile.getBytes(), new FileOutputStream(outputFileName));
  }

  private UploadedFile saveFileToDatabase(UploadedFile uploadedFile) {

    return uploadService.saveFile(uploadedFile);

  }

  private String getOutputFilename(MultipartFile multipartFile) {

    return getDestinationLocation() + multipartFile.getOriginalFilename();
  }

  
  
  // Upload image to the database
  private UploadedFile getUploadedFileInfo(MultipartFile multipartFile) throws IOException {

    UploadedFile fileInfo = new UploadedFile();
    fileInfo.setName(multipartFile.getOriginalFilename());
    fileInfo.setSize(multipartFile.getSize());
    fileInfo.setType(multipartFile.getContentType());
    fileInfo.setLocation(getDestinationLocation());
    
    byte[] photoBytes = readBytesFromFile(getDestinationLocation() + "/" + multipartFile.getOriginalFilename());
    fileInfo.setImg_data(photoBytes);   

    return fileInfo;
  }
 
  
  // Get image destination from the local disk   
  private String getDestinationLocation() {
    //return "D:/uploaded-files/";
    return "/Users/semiribrahim/Workspaces/uploaded-files/";
  }
  
    
  // Read bytes from the local disk
  private  byte[] readBytesFromFile(String filePath) throws IOException {
      File inputFile = new File(filePath);
      FileInputStream inputStream = new FileInputStream(inputFile);
       
      byte[] fileBytes = new byte[(int) inputFile.length()];
      inputStream.read(fileBytes);
      inputStream.close();
       
      return fileBytes;
  }
  
  
}
