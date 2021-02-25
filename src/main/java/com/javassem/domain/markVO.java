package com.javassem.domain;

public class markVO {
	private String latMarker;
	private String lnoAdrMarker;
	private String lonMarker;
	public String getLatMarker() {
		return latMarker;
	}
	public void setLatMarker(String latMarker) {
		this.latMarker = latMarker;
	}
	public String getLonMarker() {
		return lonMarker;
	}
	public void setLonMarker(String lonMarker) {
		this.lonMarker = lonMarker;
	}
	private String bizesNm;
	public String getLnoAdrMarker() {
		return lnoAdrMarker;
	}
	public void setLnoAdrMarker(String lnoAdrMarker) {
		this.lnoAdrMarker = lnoAdrMarker;
	}
	public String getRdnmAdr() {
		return rdnmAdr;
	}
	public void setRdnmAdr(String rdnmAdr) {
		this.rdnmAdr = rdnmAdr;
	}
	private String rdnmAdr;

	
	public String getBizesNm() {
		return bizesNm;
	}
	public void setBizesNm(String bizesNm) {
		this.bizesNm = bizesNm;
	}
}
