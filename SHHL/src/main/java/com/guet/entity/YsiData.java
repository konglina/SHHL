package com.guet.entity;
import java.math.BigDecimal;
import java.sql.Timestamp;

public class YsiData {
	private Timestamp TIME;
	private BigDecimal Turbidity;
	private BigDecimal TSS;
	private BigDecimal Chlorophyll;
	private BigDecimal BGA_PE;
	private BigDecimal ODO;
	private BigDecimal Temperature;
	private BigDecimal Specific_Conductance;
	private BigDecimal Salinity;
	private BigDecimal pH;
	private BigDecimal ORP;
	private BigDecimal Pressure;
	private BigDecimal Depth;
	public Timestamp getTIME() {
		return TIME;
	}
	public void setTIME(Timestamp tIME) {
		TIME = tIME;
	}
	public BigDecimal getTurbidity() {
		return Turbidity;
	}
	public void setTurbidity(BigDecimal turbidity) {
		Turbidity = turbidity;
	}
	public BigDecimal getTSS() {
		return TSS;
	}
	public void setTSS(BigDecimal tSS) {
		TSS = tSS;
	}
	public BigDecimal getChlorophyll() {
		return Chlorophyll;
	}
	public void setChlorophyll(BigDecimal chlorophyll) {
		Chlorophyll = chlorophyll;
	}
	public BigDecimal getBGA_PE() {
		return BGA_PE;
	}
	public void setBGA_PE(BigDecimal bGA_PE) {
		BGA_PE = bGA_PE;
	}
	public BigDecimal getODO() {
		return ODO;
	}
	public void setODO(BigDecimal oDO) {
		ODO = oDO;
	}
	public BigDecimal getTemperature() {
		return Temperature;
	}
	public void setTemperature(BigDecimal temperature) {
		Temperature = temperature;
	}
	public BigDecimal getSpecific_Conductance() {
		return Specific_Conductance;
	}
	public void setSpecific_Conductance(BigDecimal specific_Conductance) {
		Specific_Conductance = specific_Conductance;
	}
	public BigDecimal getSalinity() {
		return Salinity;
	}
	public void setSalinity(BigDecimal salinity) {
		Salinity = salinity;
	}
	public BigDecimal getpH() {
		return pH;
	}
	public void setpH(BigDecimal pH) {
		this.pH = pH;
	}
	public BigDecimal getORP() {
		return ORP;
	}
	public void setORP(BigDecimal oRP) {
		ORP = oRP;
	}
	public BigDecimal getPressure() {
		return Pressure;
	}
	public void setPressure(BigDecimal pressure) {
		Pressure = pressure;
	}
	public BigDecimal getDepth() {
		return Depth;
	}
	public void setDepth(BigDecimal depth) {
		Depth = depth;
	}
	@Override
	public String toString() {
		return "YsiData [TIME=" + TIME + ", Turbidity=" + Turbidity + ", TSS="
				+ TSS + ", Chlorophyll=" + Chlorophyll + ", BGA_PE=" + BGA_PE
				+ ", ODO=" + ODO + ", Temperature=" + Temperature
				+ ", Specific_Conductance=" + Specific_Conductance
				+ ", Salinity=" + Salinity + ", pH=" + pH + ", ORP=" + ORP
				+ ", Pressure=" + Pressure + ", Depth=" + Depth + "]";
	}
	
}
