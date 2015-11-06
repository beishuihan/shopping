package com.lee.shopping.garden;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lee.shopping.model.Voucher;
import com.lee.shopping.verify.VoucherService;

@Controller
@RequestMapping("/garden")
public class GardenController {

	@Autowired
	private VoucherService voucherService;
	
	@RequestMapping("/vouchers")
	public String list(Model model){
		List<Voucher> vouchers = voucherService.all();
		model.addAttribute("vouchers", vouchers);
		return "voucher";
	}
}
