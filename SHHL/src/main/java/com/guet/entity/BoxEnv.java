package com.guet.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;


public class BoxEnv {
	private Timestamp TIME;
	private BigDecimal InVoltage;
	private BigDecimal InCurrent;
	private BigDecimal Humidity;
	private BigDecimal Leakage;
	private BigDecimal Temperature1;
	private BigDecimal Temperature2;
	private BigDecimal Temperature3;
	private BigDecimal Temperature4;
	private BigDecimal OutVoltage1;
	private BigDecimal OutVoltage2;
	private BigDecimal OutVoltage3;
	private BigDecimal OutVoltage4;
	private BigDecimal OutVoltage5;
	private BigDecimal OutVoltage6;
	private BigDecimal OutVoltage7;
	private BigDecimal OutVoltage8;
	private BigDecimal OutCurrent1;
	private BigDecimal OutCurrent2;
	private BigDecimal OutCurrent3;
	private BigDecimal OutCurrent4;
	private BigDecimal OutCurrent5;
	private BigDecimal OutCurrent6;
	private BigDecimal OutCurrent7;
	private BigDecimal OutCurrent8;
	
	
	public BoxEnv() {
		super();
	}
	public BoxEnv(Timestamp tIME, BigDecimal inVoltage, BigDecimal inCurrent, BigDecimal humidity, BigDecimal leakage,
			BigDecimal temperature1, BigDecimal temperature2, BigDecimal temperature3, BigDecimal temperature4,
			BigDecimal outVoltage1, BigDecimal outVoltage2, BigDecimal outVoltage3, BigDecimal outVoltage4,
			BigDecimal outVoltage5, BigDecimal outVoltage6, BigDecimal outVoltage7, BigDecimal outVoltage8,
			BigDecimal outCurrent1, BigDecimal outCurrent2, BigDecimal outCurrent3, BigDecimal outCurrent4,
			BigDecimal outCurrent5, BigDecimal outCurrent6, BigDecimal outCurrent7, BigDecimal outCurrent8) {
		super();
		TIME = tIME;
		InVoltage = inVoltage;
		InCurrent = inCurrent;
		Humidity = humidity;
		Leakage = leakage;
		Temperature1 = temperature1;
		Temperature2 = temperature2;
		Temperature3 = temperature3;
		Temperature4 = temperature4;
		OutVoltage1 = outVoltage1;
		OutVoltage2 = outVoltage2;
		OutVoltage3 = outVoltage3;
		OutVoltage4 = outVoltage4;
		OutVoltage5 = outVoltage5;
		OutVoltage6 = outVoltage6;
		OutVoltage7 = outVoltage7;
		OutVoltage8 = outVoltage8;
		OutCurrent1 = outCurrent1;
		OutCurrent2 = outCurrent2;
		OutCurrent3 = outCurrent3;
		OutCurrent4 = outCurrent4;
		OutCurrent5 = outCurrent5;
		OutCurrent6 = outCurrent6;
		OutCurrent7 = outCurrent7;
		OutCurrent8 = outCurrent8;
	}
	public Timestamp getTIME() {
		return TIME;
	}
	public void setTIME(Timestamp tIME) {
		TIME = tIME;
	}
	public BigDecimal getInVoltage() {
		return InVoltage;
	}
	public void setInVoltage(BigDecimal inVoltage) {
		InVoltage = inVoltage;
	}
	public BigDecimal getInCurrent() {
		return InCurrent;
	}
	public void setInCurrent(BigDecimal inCurrent) {
		InCurrent = inCurrent;
	}
	public BigDecimal getHumidity() {
		return Humidity;
	}
	public void setHumidity(BigDecimal humidity) {
		Humidity = humidity;
	}
	public BigDecimal getLeakage() {
		return Leakage;
	}
	public void setLeakage(BigDecimal leakage) {
		Leakage = leakage;
	}
	public BigDecimal getTemperature1() {
		return Temperature1;
	}
	public void setTemperature1(BigDecimal temperature1) {
		Temperature1 = temperature1;
	}
	public BigDecimal getTemperature2() {
		return Temperature2;
	}
	public void setTemperature2(BigDecimal temperature2) {
		Temperature2 = temperature2;
	}
	public BigDecimal getTemperature3() {
		return Temperature3;
	}
	public void setTemperature3(BigDecimal temperature3) {
		Temperature3 = temperature3;
	}
	public BigDecimal getTemperature4() {
		return Temperature4;
	}
	public void setTemperature4(BigDecimal temperature4) {
		Temperature4 = temperature4;
	}
	public BigDecimal getOutVoltage1() {
		return OutVoltage1;
	}
	public void setOutVoltage1(BigDecimal outVoltage1) {
		OutVoltage1 = outVoltage1;
	}
	public BigDecimal getOutVoltage2() {
		return OutVoltage2;
	}
	public void setOutVoltage2(BigDecimal outVoltage2) {
		OutVoltage2 = outVoltage2;
	}
	public BigDecimal getOutVoltage3() {
		return OutVoltage3;
	}
	public void setOutVoltage3(BigDecimal outVoltage3) {
		OutVoltage3 = outVoltage3;
	}
	public BigDecimal getOutVoltage4() {
		return OutVoltage4;
	}
	public void setOutVoltage4(BigDecimal outVoltage4) {
		OutVoltage4 = outVoltage4;
	}
	public BigDecimal getOutVoltage5() {
		return OutVoltage5;
	}
	public void setOutVoltage5(BigDecimal outVoltage5) {
		OutVoltage5 = outVoltage5;
	}
	public BigDecimal getOutVoltage6() {
		return OutVoltage6;
	}
	public void setOutVoltage6(BigDecimal outVoltage6) {
		OutVoltage6 = outVoltage6;
	}
	public BigDecimal getOutVoltage7() {
		return OutVoltage7;
	}
	public void setOutVoltage7(BigDecimal outVoltage7) {
		OutVoltage7 = outVoltage7;
	}
	public BigDecimal getOutVoltage8() {
		return OutVoltage8;
	}
	public void setOutVoltage8(BigDecimal outVoltage8) {
		OutVoltage8 = outVoltage8;
	}
	public BigDecimal getOutCurrent1() {
		return OutCurrent1;
	}
	public void setOutCurrent1(BigDecimal outCurrent1) {
		OutCurrent1 = outCurrent1;
	}
	public BigDecimal getOutCurrent2() {
		return OutCurrent2;
	}
	public void setOutCurrent2(BigDecimal outCurrent2) {
		OutCurrent2 = outCurrent2;
	}
	public BigDecimal getOutCurrent3() {
		return OutCurrent3;
	}
	public void setOutCurrent3(BigDecimal outCurrent3) {
		OutCurrent3 = outCurrent3;
	}
	public BigDecimal getOutCurrent4() {
		return OutCurrent4;
	}
	public void setOutCurrent4(BigDecimal outCurrent4) {
		OutCurrent4 = outCurrent4;
	}
	public BigDecimal getOutCurrent5() {
		return OutCurrent5;
	}
	public void setOutCurrent5(BigDecimal outCurrent5) {
		OutCurrent5 = outCurrent5;
	}
	public BigDecimal getOutCurrent6() {
		return OutCurrent6;
	}
	public void setOutCurrent6(BigDecimal outCurrent6) {
		OutCurrent6 = outCurrent6;
	}
	public BigDecimal getOutCurrent7() {
		return OutCurrent7;
	}
	public void setOutCurrent7(BigDecimal outCurrent7) {
		OutCurrent7 = outCurrent7;
	}
	public BigDecimal getOutCurrent8() {
		return OutCurrent8;
	}
	public void setOutCurrent8(BigDecimal outCurrent8) {
		OutCurrent8 = outCurrent8;
	}
	@Override
	public String toString() {
		return "BoxEnv [TIME=" + TIME + ", InVoltage=" + InVoltage + ", InCurrent=" + InCurrent + ", Humidity="
				+ Humidity + ", Leakage=" + Leakage + ", Temperature1=" + Temperature1 + ", Temperature2="
				+ Temperature2 + ", Temperature3=" + Temperature3 + ", Temperature4=" + Temperature4 + ", OutVoltage1="
				+ OutVoltage1 + ", OutVoltage2=" + OutVoltage2 + ", OutVoltage3=" + OutVoltage3 + ", OutVoltage4="
				+ OutVoltage4 + ", OutVoltage5=" + OutVoltage5 + ", OutVoltage6=" + OutVoltage6 + ", OutVoltage7="
				+ OutVoltage7 + ", OutVoltage8=" + OutVoltage8 + ", OutCurrent1=" + OutCurrent1 + ", OutCurrent2="
				+ OutCurrent2 + ", OutCurrent3=" + OutCurrent3 + ", OutCurrent4=" + OutCurrent4 + ", OutCurrent5="
				+ OutCurrent5 + ", OutCurrent6=" + OutCurrent6 + ", OutCurrent7=" + OutCurrent7 + ", OutCurrent8="
				+ OutCurrent8 + "]";
	}
	
	
}

