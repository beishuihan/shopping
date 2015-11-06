package com.lee.shopping.garden;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lee.shopping.model.Voucher;
import com.lee.shopping.verify.VoucherService;

@Controller
@RequestMapping("/garden")
public class GardenController {

	@Autowired
	private VoucherService voucherService;
	
	@RequestMapping("/vouchers")
	public List<Voucher> list(){
		Voucher sec = voucherService.getBySecet("7XZT-TV15-IUL7-W4F0");
		System.out.println(sec);
		return null;
	}
}
