package com.lee.shopping.verify;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VerifyCouponsController {
	
	@RequestMapping("/delivery")
	public String delivery(){
		return "fill";
	}
}
