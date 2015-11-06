package com.lee.shopping.verify;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.lee.shopping.DistrictController;
import com.lee.shopping.model.Voucher;

@Service
public class VoucherService {

	public Map<String, Voucher> voucherMap;
	
	
	public List<Voucher> all(){
		init();
		return new ArrayList<Voucher>(voucherMap.values());
	}

	public Voucher getBySecet(String secret) {

		init();

		return voucherMap.get(secret);

	}

	private void init() {
		if (voucherMap == null) {

			InputStream is = DistrictController.class
					.getResourceAsStream("/vouchers");

			Gson gson = new GsonBuilder().setPrettyPrinting().create();

			List<Voucher> vouchers = gson.fromJson(new InputStreamReader(is),
					new TypeToken<List<Voucher>>() {
					}.getType());
			try {
				is.close();
			} catch (IOException e) {
			}

			voucherMap = new HashMap<String, Voucher>();
			for (Voucher voucher : vouchers) {
				voucherMap.put(voucher.getSecret(), voucher);
			}

		}
	}

}
