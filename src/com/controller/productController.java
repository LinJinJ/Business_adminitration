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
	
	//管理后台的显示
	@RequestMapping("/getProduct.do")
	@ResponseBody
	public Map<String, Object> getProduct(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> list = new ArrayList<Product>();
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		//此处应该判断list的返回值是否为空，空把空的信息传到前端去
		list = productServiceImpl.showListProduct(startIndex, endIndex);
		CountIndex = productServiceImpl.countPage(); //总记录数
		map.put("list", list);
		return map;
	}
	
	//模糊查询
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
		CountIndex = productServiceImpl.selectByLikeCount(likeUsername); //搜索的记录的总记录数
		if(list != null){
			map.put("list",list);
		}
		
		return map;
	}
	
	//前端官网显示
	@RequestMapping("/getProductData.do")
	@ResponseBody
	public Map<String, Object> getListProduct(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> list = new ArrayList<Product>();
		list = productServiceImpl.showAllProduct();
		map.put("listProduct", list);
		return map;
	}
	
	//分类显示产品
	@RequestMapping("/getProductAsCategory.do")
	@ResponseBody
	public Map<String,Object> getProductByCategory(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Product> list = new ArrayList<Product>();
		int category = Integer.parseInt(request.getParameter("category"));
		String categoryValue = "";
		switch(category){
		case 1:
			categoryValue = "手机";
			break;
		case 2:
			categoryValue = "笔记本";
			break;
		case 3:
			categoryValue = "'平板'";
			break;	
		}
		list = productServiceImpl.showProductByCategory(categoryValue);
		map.put("category", categoryValue);
		map.put("list",list);
		return map;
	}
	
	//上传
	@RequestMapping("/ImagesFileInput.do")
	@ResponseBody
	public String ImagesFileInput(HttpServletRequest request,@RequestParam(value="productImage",required=false)MultipartFile file) throws IllegalStateException, IOException{
		String imagePath = "";
		//获取原文件名称
		String name= file.getOriginalFilename();
		//设置要存储的路径
		String path = request.getServletContext().getRealPath("static/images/enterprise/product-list/");
		String fileName = path+name;
		File file1= new File(fileName);
		//存储到本地磁盘
		file.transferTo(file1);
		imagePath = "{\"src\":\"static/images/enterprise/product-list/"+name+"\"}";
		return imagePath;
	}
	
	//添加产品
	@RequestMapping("/insertProduct.do")
	public ModelAndView insertProduct(HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		product = getRequestProduct(request);
		
		int result = productServiceImpl.insertProduct(product);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result>0){
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("添加产品", "添加产品"+product.getProductname(),"成功",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("添加产品", "添加产品"+product.getProductname(),"失败",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		
		return mv;
	}
	
	
	//删除商品
	@RequestMapping("/deleteProduct.do")
	@ResponseBody
	public Map<String, Object> deleteProduct(HttpServletRequest request ,HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		String productname = request.getParameter("productname");
		int result = productServiceImpl.deleteProduct(id);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result>0){
			doresponse = msg.doForRsp("删除产品", "删除产品"+productname, "成功", adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("startIndex", startIndex);
			map.put("success", "删除成功！");
		}else{
			doresponse = msg.doForRsp("删除产品", "删除产品"+productname, "失败", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		
		return map;
	}
	
	
	//修改产品
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
			doresponse = msg.doForRsp("修改产品", "修改产品"+product.getProductname(),"成功",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			mv.setViewName("main/product_admin");
			doresponse = msg.doForRsp("修改产品", "修改产品"+product.getProductname(),"失败",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		return mv;
	}
	
	//分页
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
