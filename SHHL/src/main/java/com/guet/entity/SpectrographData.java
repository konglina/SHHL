package com.guet.entity;

import java.sql.Timestamp;
import java.math.BigDecimal;

public class SpectrographData {
	private Timestamp TIME;
	private Integer states;
	private BigDecimal consistency;
	public Timestamp getTIME() {
		return TIME;
	}
	public void setTIME(Timestamp tIME) {
		TIME = tIME;
	}
	public Integer getStates() {
		return states;
	}
	public void setStates(Integer states) {
		this.states = states;
	}
	public BigDecimal getConsistency() {
		return consistency;
	}
	public void setConsistency(BigDecimal consistency) {
		this.consistency = consistency;
	}
	@Override
	public String toString() {
		return "SpectrographData [TIME=" + TIME + ", states=" + states
				+ ", consistency=" + consistency + "]";
	}
}
