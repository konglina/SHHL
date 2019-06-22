package com.guet.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

/**
 * bbes表: 历史趋势实体类(优化)
 * @author guet
 *
 */
public class BbesData2 {
	private Date TIME;
	private BigDecimal Volt48;//电压
	private BigDecimal Abel48;//电流
	private BigDecimal Temperature;//温度
	private BigDecimal Conductivity;//电导率
	private BigDecimal Pressure;//压力
	private BigDecimal Salinity;//盐度
	
	
	public BbesData2() {
		super();
	}
	
	public BbesData2(Date tIME, BigDecimal volt48, BigDecimal abel48, BigDecimal temperature,
			BigDecimal conductivity, BigDecimal pressure, BigDecimal salinity) {
		super();
		TIME = tIME;
		Volt48 = volt48;
		Abel48 = abel48;
		Temperature = temperature;
		Conductivity = conductivity;
		Pressure = pressure;
		Salinity = salinity;
	}

	public Date getTIME() {
		return TIME;
	}
	public void setTIME(Date tIME) {
		TIME = tIME;
	}
	public BigDecimal getVolt48() {
		return Volt48;
	}
	public void setVolt48(BigDecimal volt48) {
		Volt48 = volt48;
	}
	public BigDecimal getAbel48() {
		return Abel48;
	}
	public void setAbel48(BigDecimal abel48) {
		Abel48 = abel48;
	}
	public BigDecimal getTemperature() {
		return Temperature;
	}
	public void setTemperature(BigDecimal temperature) {
		Temperature = temperature;
	}
	public BigDecimal getConductivity() {
		return Conductivity;
	}
	public void setConductivity(BigDecimal conductivity) {
		Conductivity = conductivity;
	}
	public BigDecimal getPressure() {
		return Pressure;
	}
	public void setPressure(BigDecimal pressure) {
		Pressure = pressure;
	}
	public BigDecimal getSalinity() {
		return Salinity;
	}
	public void setSalinity(BigDecimal salinity) {
		Salinity = salinity;
	}
	@Override
	public String toString() {
		return "BbesData2 [TIME=" + TIME + ", Volt48=" + Volt48 + ", Abel48=" + Abel48 + ", Temperature=" + Temperature
				+ ", Conductivity=" + Conductivity + ", Pressure=" + Pressure + ", Salinity=" + Salinity + "]";
	}
	
	
}
