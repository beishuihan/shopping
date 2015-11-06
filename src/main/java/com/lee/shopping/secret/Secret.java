package com.lee.shopping.secret;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.lee.shopping.model.Voucher;


public class Secret {

	public static List<String> generateSecret(int count){

		List<String> secrets = new ArrayList<String>();

		Random random = new Random();
		//65 A 90 Z 49 0 48
		for (int j = 0; j < count; j++) {

			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < 16; i++) {
				int v = random.nextInt(36);
				if(i%4 == 0 && i != 0){
					sb.append("-");
				}
				if(v < 10){
					sb.append((char)(v+48));

				}else{
					sb.append((char)(v - 10 + 65));
				}
			}
			secrets.add(sb.toString());
		}
		
		return secrets;
	}
	public static void main(String[] args) throws IOException {
		List<String> secrets = Secret.generateSecret(100);
		
		List<Voucher> vouchers  = new ArrayList<Voucher>();
		
		for (String secret : secrets) {
			
			Voucher voucher = new Voucher();
			voucher.setId(UUID.randomUUID().toString());
			voucher.setSecret(secret);
			
			vouchers.add(voucher);
		}
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(vouchers);
		
		File file = new File("vouchers");
		file.createNewFile();
		
		FileWriter fileWriter = new FileWriter(file);
		
		fileWriter.write(json);
		fileWriter.flush();
		fileWriter.close();
	}
}
