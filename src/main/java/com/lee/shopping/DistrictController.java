package com.lee.shopping;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.lee.shopping.model.District;
import com.lee.shopping.util.VerifyCodeUtils;

@Controller
@RequestMapping("/district")
public class DistrictController {

	private static List<District> provinces = null;
	private static Map<String,List<District>> cities;
	private static Map<String,List<District>> countries;


	public synchronized void init(){
		if(provinces == null || cities == null || countries ==null){

			InputStream is = DistrictController.class.getResourceAsStream("/districts");
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			List<District> districts = gson.fromJson(new InputStreamReader(is), new TypeToken<List<District>>() {  
			}.getType());
			
			provinces = districts;
			cities = new HashMap<String, List<District>>();
			countries = new HashMap<String, List<District>>();
			for (District provinceDistrict : districts) {
				List<District> cityDistricts =  provinceDistrict.getChildren();
				provinceDistrict.setChildren(null);
				cities.put(provinceDistrict.getId(), cityDistricts);
				if(cityDistricts != null){
					for (District countryDistrict : cityDistricts) {
						countries.put(countryDistrict.getId(), countryDistrict.getChildren());
						countryDistrict.setChildren(null);
					}
				}

			}


		}
	}

	@RequestMapping("/provinces")
	@ResponseBody
	public List<District> getProvince(){
		if(provinces == null){
			init();
		}
		return provinces;
	}
	@RequestMapping("/province/{provinceId}/cities")
	@ResponseBody
	public List<District> getCities(@PathVariable String provinceId){
		if(cities == null){
			init();
		}
		return cities.get(provinceId);
	}
	@RequestMapping("/city/{cityId}/counties")
	@ResponseBody
	public List<District> getProvince(@PathVariable String cityId){
		if(countries == null){
			init();
		}
		return countries.get(cityId);
	}
	
	@RequestMapping("/image")
	public void getProvince(HttpServletResponse response){
		
		 response.addHeader("Pragma", "No-cache");  
		 response.addHeader("Cache-Control", "no-cache");  
		 response.addIntHeader("Expires", 0);  
	    response.setContentType("image/jpeg");  
	          
	        //生成随机字串  
	        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);  
	       
	        //生成图片  
	        int w = 100, h = 40;  
	        try {
				VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
			} catch (IOException e) {
				e.printStackTrace();
			} 
	}
	
	
}
