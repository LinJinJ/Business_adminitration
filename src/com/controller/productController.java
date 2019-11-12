package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Doresponse;
import com.pojo.Product;
import com.pojo.Userinfo;
import com.service.MsgServiceImpl;
import com.service.ProductServiceImpl;
import com.util.GetHttpInfo;
import com.util.PageBean;
import com.util.doresponseMsg;

@Controller
@RequestMapping("/Product")
public class productController {

	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@Autowired
	Product product;
	
	@Autowired
	Doresponse doresponse;
	
	@Autowired
	MsgServiceImpl msgServiceImpl;
	
	@Autowired
	doresponseMsg msg;
	
	@Autowired
	PageBean page;
	
	@Autowired
	GetHttpInfo getHttpInfo;
	
	int CountIndex;
	
	private int startIndex,endIndex;
	
	//�����̨����ʾ
	@RequestMapping("/getProduct.do")
	@ResponseBody
	public Map<String, Object> getProduct(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> list = new ArrayList<Product>();
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		//�˴�Ӧ���ж�list�ķ���ֵ�Ƿ�Ϊ�գ��հѿյ���Ϣ����ǰ��ȥ
		list = productServiceImpl.showListProduct(startIndex, endIndex);
		CountIndex = productServiceImpl.countPage(); //�ܼ�¼��
		map.put("list", list);
		return map;
	}
	
	//ģ����ѯ
	@RequestMapping("/search.do")
	@ResponseBody
	public Map<String,Object> search(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		String Username = request.getParameter("likeUsername");
		String likeUsername = "%"+Username+"%";
		System.out.println(likeUsername);
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		List<Product> list = productServiceImpl.selectSearch(likeUsername, startIndex, endIndex);
		CountIndex = productServiceImpl.selectByLikeCount(likeUsername); //�����ļ�¼���ܼ�¼��
		if(list != null){
			map.put("list",list);
		}
		
		return map;
	}
	
	//ǰ�˹�����ʾ
	@RequestMapping("/getProductData.do")
	@ResponseBody
	public Map<String, Object> getListProduct(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> list = new ArrayList<Product>();
		list = productServiceImpl.showAllProduct();
		map.put("listProduct", list);
		return map;
	}
	
	//������ʾ��Ʒ
	@RequestMapping("/getProductAsCategory.do")
	@ResponseBody
	public Map<String,Object> getProductByCategory(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Product> list = new ArrayList<Product>();
		int category = Integer.parseInt(request.getParameter("category"));
		String categoryValue = "";
		switch(category){
		case 1:
			categoryValue = "�ֻ�";
			break;
		case 2:
			categoryValue = "�ʼǱ�";
			break;
		case 3:
			categoryValue = "'ƽ��'";
			break;	
		}
		list = productServiceImpl.showProductByCategory(categoryValue);
		map.put("category", categoryValue);
		map.put("list",list);
		return map;
	}
	
	//�ϴ�
	@RequestMapping("/ImagesFileInput.do")
	@ResponseBody
	public String ImagesFileInput(HttpServletRequest request,@RequestParam(value="productImage",required=false)MultipartFile file) throws IllegalStateException, IOException{
		String imagePath = "";
		//��ȡԭ�ļ�����
		String name= file.getOriginalFilename();
		//����Ҫ�洢��·��
		String path = request.getServletContext().getRealPath("static/images/enterprise/product-list/");
		String fileName = path+name;
		File file1= new File(fileName);
		//�洢�����ش���
		file.transferTo(file1);
		imagePath = "{\"src\":\"static/images/enterprise/product-list/"+name+"\"}";
		return imagePath;
	}
	
	//��Ӳ�Ʒ
	@RequestMapping("/insertProduct.do")
	public ModelAndView insertProduct(HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		product = getRequestProduct(request);
		
		int result = productServiceImpl.insertProduct(product);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result>0){
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("��Ӳ�Ʒ", "��Ӳ�Ʒ"+product.getProductname(),"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("��Ӳ�Ʒ", "��Ӳ�Ʒ"+product.getProductname(),"ʧ��",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		
		return mv;
	}
	
	
	//ɾ����Ʒ
	@RequestMapping("/deleteProduct.do")
	@ResponseBody
	public Map<String, Object> deleteProduct(HttpServletRequest request ,HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		String productname = request.getParameter("productname");
		int result = productServiceImpl.deleteProduct(id);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result>0){
			doresponse = msg.doForRsp("ɾ����Ʒ", "ɾ����Ʒ"+productname, "�ɹ�", adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("startIndex", startIndex);
			map.put("success", "ɾ���ɹ���");
		}else{
			doresponse = msg.doForRsp("ɾ����Ʒ", "ɾ����Ʒ"+productname, "ʧ��", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		
		return map;
	}
	
	
	//�޸Ĳ�Ʒ
	@RequestMapping("/updateProduct.do")
	public ModelAndView updateProduct(HttpServletRequest request,HttpSession session){
		ModelAndView mv = new ModelAndView();
		int productId = Integer.parseInt(request.getParameter("productid"));
		product.setId(productId);
		product = getRequestProduct(request);
		int result = productServiceImpl.updateProduct(product);
		String adminName = getHttpInfo.getAdminName(session);
		if(result>0){
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("�޸Ĳ�Ʒ", "�޸Ĳ�Ʒ"+product.getProductname(),"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("�޸Ĳ�Ʒ", "�޸Ĳ�Ʒ"+product.getProductname(),"ʧ��",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		return mv;
	}
	
	//��ҳ
	@RequestMapping("/getPage.do")
	@ResponseBody
	public Map<String, Object> getPage(){
		
		return page.getPage(CountIndex, endIndex, startIndex);
	}
	
	
	
	
	public Product getRequestProduct(HttpServletRequest request){
		
		String productname = request.getParameter("productname");
		double productprice = Double.parseDouble(request.getParameter("productprice"));
		String productpictuer = request.getParameter("productpictuer");
		String productparameter1 = request.getParameter("productparameter1");
		String productparameter2 = request.getParameter("productparameter2");
		String productparameter3 = request.getParameter("productparameter3");
		String category = request.getParameter("productcategory");
		
		product.setProductname(productname);
		product.setProductprice(productprice);
		product.setProductpictuer(productpictuer);
		product.setProductparameter1(productparameter1);
		product.setProductparameter2(productparameter2);
		product.setProductparameter3(productparameter3);
		product.setCategory(category);
		
		return product;
	}
	
}
