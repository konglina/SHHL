package com.guet.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;


public class BoxEnv {
	private Timestamp TIME;
	private BigDecimal inVoltage;
	private BigDecimal inCurrent;
	private BigDecimal humidity;
	private BigDecimal leakage;
	private BigDecimal temperature1;
	private BigDecimal temperature2;
	private BigDecimal temperature3;
	private BigDecimal temperature4;
	private BigDecimal outVoltage1;
	private BigDecimal outVoltage2;
	private BigDecimal outVoltage3;
	private BigDecimal outVoltage4;
	private BigDecimal outVoltage5;
	private BigDecimal outVoltage6;
	private BigDecimal outVoltage7;
	private BigDecimal outVoltage8;
	private BigDecimal outCurrent1;
	private BigDecimal outCurrent2;
	private BigDecimal outCurrent3;
	private BigDecimal outCurrent4;
	private BigDecimal outCurrent5;
	private BigDecimal outCurrent6;
	private BigDecimal outCurrent7;
	private BigDecimal outCurrent8;
	
	
	public BoxEnv() {
		super();
	}


	public Timestamp getTIME() {
		return TIME;
	}


	public void setTIME(Timestamp tIME) {
		TIME = tIME;
	}


	public BigDecimal getInVoltage() {
		return inVoltage;
	}


	public void setInVoltage(BigDecimal inVoltage) {
		this.inVoltage = inVoltage;
	}


	public BigDecimal getInCurrent() {
		return inCurrent;
	}


	public void setInCurrent(BigDecimal inCurrent) {
		this.inCurrent = inCurrent;
	}


	public BigDecimal getHumidity() {
		return humidity;
	}


	public void setHumidity(BigDecimal humidity) {
		this.humidity = humidity;
	}


	public BigDecimal getLeakage() {
		return leakage;
	}


	public void setLeakage(BigDecimal leakage) {
		this.leakage = leakage;
	}


	public BigDecimal getTemperature1() {
		return temperature1;
	}


	public void setTemperature1(BigDecimal temperature1) {
		this.temperature1 = temperature1;
	}


	public BigDecimal getTemperature2() {
		return temperature2;
	}


	public void setTemperature2(BigDecimal temperature2) {
		this.temperature2 = temperature2;
	}


	public BigDecimal getTemperature3() {
		return temperature3;
	}


	public void setTemperature3(BigDecimal temperature3) {
		this.temperature3 = temperature3;
	}


	public BigDecimal getTemperature4() {
		return temperature4;
	}


	public void setTemperature4(BigDecimal temperature4) {
		this.temperature4 = temperature4;
	}


	public BigDecimal getOutVoltage1() {
		return outVoltage1;
	}


	public void setOutVoltage1(BigDecimal outVoltage1) {
		this.outVoltage1 = outVoltage1;
	}


	public BigDecimal getOutVoltage2() {
		return outVoltage2;
	}


	public void setOutVoltage2(BigDecimal outVoltage2) {
		this.outVoltage2 = outVoltage2;
	}


	public BigDecimal getOutVoltage3() {
		return outVoltage3;
	}


	public void setOutVoltage3(BigDecimal outVoltage3) {
		this.outVoltage3 = outVoltage3;
	}


	public BigDecimal getOutVoltage4() {
		return outVoltage4;
	}


	public void setOutVoltage4(BigDecimal outVoltage4) {
		this.outVoltage4 = outVoltage4;
	}


	public BigDecimal getOutVoltage5() {
		return outVoltage5;
	}


	public void setOutVoltage5(BigDecimal outVoltage5) {
		this.outVoltage5 = outVoltage5;
	}


	public BigDecimal getOutVoltage6() {
		return outVoltage6;
	}


	public void setOutVoltage6(BigDecimal outVoltage6) {
		this.outVoltage6 = outVoltage6;
	}


	public BigDecimal getOutVoltage7() {
		return outVoltage7;
	}


	public void setOutVoltage7(BigDecimal outVoltage7) {
		this.outVoltage7 = outVoltage7;
	}


	public BigDecimal getOutVoltage8() {
		return outVoltage8;
	}


	public void setOutVoltage8(BigDecimal outVoltage8) {
		this.outVoltage8 = outVoltage8;
	}


	public BigDecimal getOutCurrent1() {
		return outCurrent1;
	}


	public void setOutCurrent1(BigDecimal outCurrent1) {
		this.outCurrent1 = outCurrent1;
	}


	public BigDecimal getOutCurrent2() {
		return outCurrent2;
	}


	public void setOutCurrent2(BigDecimal outCurrent2) {
		this.outCurrent2 = outCurrent2;
	}


	public BigDecimal getOutCurrent3() {
		return outCurrent3;
	}


	public void setOutCurrent3(BigDecimal outCurrent3) {
		this.outCurrent3 = outCurrent3;
	}


	public BigDecimal getOutCurrent4() {
		return outCurrent4;
	}


	public void setOutCurrent4(BigDecimal outCurrent4) {
		this.outCurrent4 = outCurrent4;
	}


	public BigDecimal getOutCurrent5() {
		return outCurrent5;
	}


	public void setOutCurrent5(BigDecimal outCurrent5) {
		this.outCurrent5 = outCurrent5;
	}


	public BigDecimal getOutCurrent6() {
		return outCurrent6;
	}


	public void setOutCurrent6(BigDecimal outCurrent6) {
		this.outCurrent6 = outCurrent6;
	}


	public BigDecimal getOutCurrent7() {
		return outCurrent7;
	}


	public void setOutCurrent7(BigDecimal outCurrent7) {
		this.outCurrent7 = outCurrent7;
	}


	public BigDecimal getOutCurrent8() {
		return outCurrent8;
	}


	public void setOutCurrent8(BigDecimal outCurrent8) {
		this.outCurrent8 = outCurrent8;
	}


	@Override
	public String toString() {
		return "BoxEnv [TIME=" + TIME + ", inVoltage=" + inVoltage + ", inCurrent=" + inCurrent + ", humidity="
				+ humidity + ", leakage=" + leakage + ", temperature1=" + temperature1 + ", temperature2="
				+ temperature2 + ", temperature3=" + temperature3 + ", temperature4=" + temperature4 + ", outVoltage1="
				+ outVoltage1 + ", outVoltage2=" + outVoltage2 + ", outVoltage3=" + outVoltage3 + ", outVoltage4="
				+ outVoltage4 + ", outVoltage5=" + outVoltage5 + ", outVoltage6=" + outVoltage6 + ", outVoltage7="
				+ outVoltage7 + ", outVoltage8=" + outVoltage8 + ", outCurrent1=" + outCurrent1 + ", outCurrent2="
				+ outCurrent2 + ", outCurrent3=" + outCurrent3 + ", outCurrent4=" + outCurrent4 + ", outCurrent5="
				+ outCurrent5 + ", outCurrent6=" + outCurrent6 + ", outCurrent7=" + outCurrent7 + ", outCurrent8="
				+ outCurrent8 + "]";
	}
	
		
}
