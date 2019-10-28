package com.offcn.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.offcn.ssm.pojo.Car;
import com.offcn.ssm.pojo.CarItem;
import com.offcn.ssm.pojo.Product;
import com.offcn.ssm.service.admin.ProductService;
@Controller
@RequestMapping("car")
public class CarController {
	@Autowired
	ProductService service;
	
	@RequestMapping("/addCar")
	public ModelAndView addCar(String pid,int count,HttpSession session) {
		ModelAndView mav=new ModelAndView();
		//1ͨ��pid�ҵ���Ʒ����Ϣ
		Product p=service.findProductByPid(pid);
		
		//2��count���뵽���ﳵ������
		CarItem item=new CarItem();
		item.setProduct(p);
		item.setCount(count);
		
		//�����ﳵ����뵽���ﳵ
		Car car=(Car)session.getAttribute("car");
		if(car==null) {
			car=new Car();
		}
		car.add2Car(item);
		session.setAttribute("car",car);

		mav.setViewName("cart");
		return mav;
	}
	//ɾ�����ﳵ��Ʒ
	@RequestMapping("/delCar")
	public String delCar(String pid,HttpSession session) {
		Car car=(Car)session.getAttribute("car");
		car.remove(pid);
		return "cart";
	}
	@RequestMapping("/clearCar")
	public String clearCar(String pid,HttpSession session) {
		Car car=(Car)session.getAttribute("car");
		car.clear();//��չ��ﳵ
		return "cart";
	}
	@RequestMapping("showCar")
	public String showCar() {
		return "cart";
	}
	
}
	
	
