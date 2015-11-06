package com.lee.shopping.model;

public class Voucher {

	private String id;
	
	private String secret;
	
	private Consignee consignee;
	
	private Status status;
	
	
	public enum Status{
		//验证
		VERIFY,
		//验证完成
		VERIFY_OK,
		//发货
		DELIVERY,
		//签收
		SIGN
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public Consignee getConsignee() {
		return consignee;
	}

	public void setConsignee(Consignee consignee) {
		this.consignee = consignee;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Voucher [id=" + id + ", secret=" + secret + ", consignee="
				+ consignee + ", status=" + status + "]";
	}

	
}
