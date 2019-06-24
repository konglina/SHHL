package com.guet.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class UvaData {
	private Timestamp TIME;
	private BigDecimal PT1000_Temperature;
	private String voltage;
	private String current;
	public Timestamp getTIME() {
		return TIME;
	}
	public void setTIME(Timestamp tIME) {
		TIME = tIME;
	}
	public BigDecimal getPT1000_Temperature() {
		return PT1000_Temperature;
	}
	public void setPT1000_Temperature(BigDecimal pT1000_Temperature) {
		PT1000_Temperature = pT1000_Temperature;
	}
	public String getVoltage() {
		return voltage;
	}
	public void setVoltage(String voltage) {
		this.voltage = voltage;
	}
	public String getCurrent() {
		return current;
	}
	public void setCurrent(String current) {
		this.current = current;
	}
	@Override
	public String toString() {
		return "UvaData [TIME=" + TIME + ", PT1000_Temperature="
				+ PT1000_Temperature + ", voltage=" + voltage + ", current="
				+ current + "]";
	}
	
}
