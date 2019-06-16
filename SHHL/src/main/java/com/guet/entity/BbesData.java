package com.guet.entity;
import java.math.BigDecimal;
import java.sql.Timestamp;

public class BbesData {
	private Timestamp TIME;
	private BigDecimal Volt48;
	private BigDecimal Abel48;
	private BigDecimal Volt24;
	private BigDecimal Abel24;
	private BigDecimal Volt12;
	private BigDecimal Abel12;
	private BigDecimal Temperature;
	private BigDecimal Sensor_Temperature;
	private BigDecimal CO2;
	private BigDecimal CH4;
	private BigDecimal Density;
	private BigDecimal Conductivity;
	private BigDecimal DoData;
	private BigDecimal pH;
	private BigDecimal Pressure;
	private BigDecimal Salinity;
	private BigDecimal Calc;
	private BigDecimal BlockBattery;
	private Integer Cultivating_bag_1;
	private Integer Cultivating_bag_2;
	private Integer Cultivating_bag_3;
	private Integer Cultivating_bag_4;
	private Integer Cultivating_bag_5;
	private Integer Cultivating_bag_6;
	private Integer Cultivating_bag_7;
	private Integer Cultivating_bag_8;
	private Integer Cultivating_bag_9;
	private Integer Cultivating_bag_10;
	private Integer Cultivating_bag_11;
	private Integer Cultivating_bag_12;
	private Integer Pump_1;
	private Integer Pump_2;
	private Integer Pump_3;
	private Integer Pump_4;
	private Integer Pump_5;
	private Integer Solenoid_valve_1;
	private Integer Solenoid_valve_2;
	private Integer Solenoid_valve_3;
	private Integer Solenoid_valve_4;
	private Integer Solenoid_valve_5;
	private Integer Solenoid_valve_6;
	private Integer Solenoid_valve_7;
	private Integer Solenoid_valve_8;
	private Integer Solenoid_valve_9;
	private Integer Solenoid_valve_10;
	private Integer Solenoid_valve_11;
	private Integer Solenoid_valve_12;
	private Integer Solenoid_valve_13;
	private Integer Solenoid_valve_14;
	private Integer Solenoid_valve_15;
	private Integer Solenoid_valve_16;
	private Integer Solenoid_valve_17;
	private Integer Solenoid_valve_18;
	private Integer Solenoid_valve_19;
	private Integer Solenoid_valve_20;
	private Integer Solenoid_valve_21;
	private Integer Solenoid_valve_22;
	private Integer Solenoid_valve_23;
	private Integer Solenoid_valve_24;
	private Integer CTD_sensor_status;
	private Integer CO2_sensor_status;
	private Integer CH4_sensor_status;
	
	
	
	public BbesData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BbesData(Timestamp tIME, BigDecimal volt48, BigDecimal abel48,
			BigDecimal volt24, BigDecimal abel24, BigDecimal volt12,
			BigDecimal abel12, BigDecimal temperature,
			BigDecimal sensor_Temperature, BigDecimal cO2, BigDecimal cH4,
			BigDecimal density, BigDecimal conductivity, BigDecimal doData,
			BigDecimal pH, BigDecimal pressure, BigDecimal salinity,
			BigDecimal calc, BigDecimal blockBattery,
			Integer cultivating_bag_1, Integer cultivating_bag_2,
			Integer cultivating_bag_3, Integer cultivating_bag_4,
			Integer cultivating_bag_5, Integer cultivating_bag_6,
			Integer cultivating_bag_7, Integer cultivating_bag_8,
			Integer cultivating_bag_9, Integer cultivating_bag_10,
			Integer cultivating_bag_11, Integer cultivating_bag_12,
			Integer pump_1, Integer pump_2, Integer pump_3, Integer pump_4,
			Integer pump_5, Integer solenoid_valve_1, Integer solenoid_valve_2,
			Integer solenoid_valve_3, Integer solenoid_valve_4,
			Integer solenoid_valve_5, Integer solenoid_valve_6,
			Integer solenoid_valve_7, Integer solenoid_valve_8,
			Integer solenoid_valve_9, Integer solenoid_valve_10,
			Integer solenoid_valve_11, Integer solenoid_valve_12,
			Integer solenoid_valve_13, Integer solenoid_valve_14,
			Integer solenoid_valve_15, Integer solenoid_valve_16,
			Integer solenoid_valve_17, Integer solenoid_valve_18,
			Integer solenoid_valve_19, Integer solenoid_valve_20,
			Integer solenoid_valve_21, Integer solenoid_valve_22,
			Integer solenoid_valve_23, Integer solenoid_valve_24,
			Integer cTD_sensor_status, Integer cO2_sensor_status,
			Integer cH4_sensor_status) {
		super();
		TIME = tIME;
		Volt48 = volt48;
		Abel48 = abel48;
		Volt24 = volt24;
		Abel24 = abel24;
		Volt12 = volt12;
		Abel12 = abel12;
		Temperature = temperature;
		Sensor_Temperature = sensor_Temperature;
		CO2 = cO2;
		CH4 = cH4;
		Density = density;
		Conductivity = conductivity;
		DoData = doData;
		this.pH = pH;
		Pressure = pressure;
		Salinity = salinity;
		Calc = calc;
		BlockBattery = blockBattery;
		Cultivating_bag_1 = cultivating_bag_1;
		Cultivating_bag_2 = cultivating_bag_2;
		Cultivating_bag_3 = cultivating_bag_3;
		Cultivating_bag_4 = cultivating_bag_4;
		Cultivating_bag_5 = cultivating_bag_5;
		Cultivating_bag_6 = cultivating_bag_6;
		Cultivating_bag_7 = cultivating_bag_7;
		Cultivating_bag_8 = cultivating_bag_8;
		Cultivating_bag_9 = cultivating_bag_9;
		Cultivating_bag_10 = cultivating_bag_10;
		Cultivating_bag_11 = cultivating_bag_11;
		Cultivating_bag_12 = cultivating_bag_12;
		Pump_1 = pump_1;
		Pump_2 = pump_2;
		Pump_3 = pump_3;
		Pump_4 = pump_4;
		Pump_5 = pump_5;
		Solenoid_valve_1 = solenoid_valve_1;
		Solenoid_valve_2 = solenoid_valve_2;
		Solenoid_valve_3 = solenoid_valve_3;
		Solenoid_valve_4 = solenoid_valve_4;
		Solenoid_valve_5 = solenoid_valve_5;
		Solenoid_valve_6 = solenoid_valve_6;
		Solenoid_valve_7 = solenoid_valve_7;
		Solenoid_valve_8 = solenoid_valve_8;
		Solenoid_valve_9 = solenoid_valve_9;
		Solenoid_valve_10 = solenoid_valve_10;
		Solenoid_valve_11 = solenoid_valve_11;
		Solenoid_valve_12 = solenoid_valve_12;
		Solenoid_valve_13 = solenoid_valve_13;
		Solenoid_valve_14 = solenoid_valve_14;
		Solenoid_valve_15 = solenoid_valve_15;
		Solenoid_valve_16 = solenoid_valve_16;
		Solenoid_valve_17 = solenoid_valve_17;
		Solenoid_valve_18 = solenoid_valve_18;
		Solenoid_valve_19 = solenoid_valve_19;
		Solenoid_valve_20 = solenoid_valve_20;
		Solenoid_valve_21 = solenoid_valve_21;
		Solenoid_valve_22 = solenoid_valve_22;
		Solenoid_valve_23 = solenoid_valve_23;
		Solenoid_valve_24 = solenoid_valve_24;
		CTD_sensor_status = cTD_sensor_status;
		CO2_sensor_status = cO2_sensor_status;
		CH4_sensor_status = cH4_sensor_status;
	}
	public Timestamp getTIME() {
		return TIME;
	}
	public void setTIME(Timestamp tIME) {
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
	public BigDecimal getVolt24() {
		return Volt24;
	}
	public void setVolt24(BigDecimal volt24) {
		Volt24 = volt24;
	}
	public BigDecimal getAbel24() {
		return Abel24;
	}
	public void setAbel24(BigDecimal abel24) {
		Abel24 = abel24;
	}
	public BigDecimal getVolt12() {
		return Volt12;
	}
	public void setVolt12(BigDecimal volt12) {
		Volt12 = volt12;
	}
	public BigDecimal getAbel12() {
		return Abel12;
	}
	public void setAbel12(BigDecimal abel12) {
		Abel12 = abel12;
	}
	public BigDecimal getTemperature() {
		return Temperature;
	}
	public void setTemperature(BigDecimal temperature) {
		Temperature = temperature;
	}
	public BigDecimal getSensor_Temperature() {
		return Sensor_Temperature;
	}
	public void setSensor_Temperature(BigDecimal sensor_Temperature) {
		Sensor_Temperature = sensor_Temperature;
	}
	public BigDecimal getCO2() {
		return CO2;
	}
	public void setCO2(BigDecimal cO2) {
		CO2 = cO2;
	}
	public BigDecimal getCH4() {
		return CH4;
	}
	public void setCH4(BigDecimal cH4) {
		CH4 = cH4;
	}
	public BigDecimal getDensity() {
		return Density;
	}
	public void setDensity(BigDecimal density) {
		Density = density;
	}
	public BigDecimal getConductivity() {
		return Conductivity;
	}
	public void setConductivity(BigDecimal conductivity) {
		Conductivity = conductivity;
	}
	public BigDecimal getDoData() {
		return DoData;
	}
	public void setDoData(BigDecimal doData) {
		DoData = doData;
	}
	public BigDecimal getpH() {
		return pH;
	}
	public void setpH(BigDecimal pH) {
		this.pH = pH;
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
	public BigDecimal getCalc() {
		return Calc;
	}
	public void setCalc(BigDecimal calc) {
		Calc = calc;
	}
	public BigDecimal getBlockBattery() {
		return BlockBattery;
	}
	public void setBlockBattery(BigDecimal blockBattery) {
		BlockBattery = blockBattery;
	}
	public Integer getCultivating_bag_1() {
		return Cultivating_bag_1;
	}
	public void setCultivating_bag_1(Integer cultivating_bag_1) {
		Cultivating_bag_1 = cultivating_bag_1;
	}
	public Integer getCultivating_bag_2() {
		return Cultivating_bag_2;
	}
	public void setCultivating_bag_2(Integer cultivating_bag_2) {
		Cultivating_bag_2 = cultivating_bag_2;
	}
	public Integer getCultivating_bag_3() {
		return Cultivating_bag_3;
	}
	public void setCultivating_bag_3(Integer cultivating_bag_3) {
		Cultivating_bag_3 = cultivating_bag_3;
	}
	public Integer getCultivating_bag_4() {
		return Cultivating_bag_4;
	}
	public void setCultivating_bag_4(Integer cultivating_bag_4) {
		Cultivating_bag_4 = cultivating_bag_4;
	}
	public Integer getCultivating_bag_5() {
		return Cultivating_bag_5;
	}
	public void setCultivating_bag_5(Integer cultivating_bag_5) {
		Cultivating_bag_5 = cultivating_bag_5;
	}
	public Integer getCultivating_bag_6() {
		return Cultivating_bag_6;
	}
	public void setCultivating_bag_6(Integer cultivating_bag_6) {
		Cultivating_bag_6 = cultivating_bag_6;
	}
	public Integer getCultivating_bag_7() {
		return Cultivating_bag_7;
	}
	public void setCultivating_bag_7(Integer cultivating_bag_7) {
		Cultivating_bag_7 = cultivating_bag_7;
	}
	public Integer getCultivating_bag_8() {
		return Cultivating_bag_8;
	}
	public void setCultivating_bag_8(Integer cultivating_bag_8) {
		Cultivating_bag_8 = cultivating_bag_8;
	}
	public Integer getCultivating_bag_9() {
		return Cultivating_bag_9;
	}
	public void setCultivating_bag_9(Integer cultivating_bag_9) {
		Cultivating_bag_9 = cultivating_bag_9;
	}
	public Integer getCultivating_bag_10() {
		return Cultivating_bag_10;
	}
	public void setCultivating_bag_10(Integer cultivating_bag_10) {
		Cultivating_bag_10 = cultivating_bag_10;
	}
	public Integer getCultivating_bag_11() {
		return Cultivating_bag_11;
	}
	public void setCultivating_bag_11(Integer cultivating_bag_11) {
		Cultivating_bag_11 = cultivating_bag_11;
	}
	public Integer getCultivating_bag_12() {
		return Cultivating_bag_12;
	}
	public void setCultivating_bag_12(Integer cultivating_bag_12) {
		Cultivating_bag_12 = cultivating_bag_12;
	}
	public Integer getPump_1() {
		return Pump_1;
	}
	public void setPump_1(Integer pump_1) {
		Pump_1 = pump_1;
	}
	public Integer getPump_2() {
		return Pump_2;
	}
	public void setPump_2(Integer pump_2) {
		Pump_2 = pump_2;
	}
	public Integer getPump_3() {
		return Pump_3;
	}
	public void setPump_3(Integer pump_3) {
		Pump_3 = pump_3;
	}
	public Integer getPump_4() {
		return Pump_4;
	}
	public void setPump_4(Integer pump_4) {
		Pump_4 = pump_4;
	}
	public Integer getPump_5() {
		return Pump_5;
	}
	public void setPump_5(Integer pump_5) {
		Pump_5 = pump_5;
	}
	public Integer getSolenoid_valve_1() {
		return Solenoid_valve_1;
	}
	public void setSolenoid_valve_1(Integer solenoid_valve_1) {
		Solenoid_valve_1 = solenoid_valve_1;
	}
	public Integer getSolenoid_valve_2() {
		return Solenoid_valve_2;
	}
	public void setSolenoid_valve_2(Integer solenoid_valve_2) {
		Solenoid_valve_2 = solenoid_valve_2;
	}
	public Integer getSolenoid_valve_3() {
		return Solenoid_valve_3;
	}
	public void setSolenoid_valve_3(Integer solenoid_valve_3) {
		Solenoid_valve_3 = solenoid_valve_3;
	}
	public Integer getSolenoid_valve_4() {
		return Solenoid_valve_4;
	}
	public void setSolenoid_valve_4(Integer solenoid_valve_4) {
		Solenoid_valve_4 = solenoid_valve_4;
	}
	public Integer getSolenoid_valve_5() {
		return Solenoid_valve_5;
	}
	public void setSolenoid_valve_5(Integer solenoid_valve_5) {
		Solenoid_valve_5 = solenoid_valve_5;
	}
	public Integer getSolenoid_valve_6() {
		return Solenoid_valve_6;
	}
	public void setSolenoid_valve_6(Integer solenoid_valve_6) {
		Solenoid_valve_6 = solenoid_valve_6;
	}
	public Integer getSolenoid_valve_7() {
		return Solenoid_valve_7;
	}
	public void setSolenoid_valve_7(Integer solenoid_valve_7) {
		Solenoid_valve_7 = solenoid_valve_7;
	}
	public Integer getSolenoid_valve_8() {
		return Solenoid_valve_8;
	}
	public void setSolenoid_valve_8(Integer solenoid_valve_8) {
		Solenoid_valve_8 = solenoid_valve_8;
	}
	public Integer getSolenoid_valve_9() {
		return Solenoid_valve_9;
	}
	public void setSolenoid_valve_9(Integer solenoid_valve_9) {
		Solenoid_valve_9 = solenoid_valve_9;
	}
	public Integer getSolenoid_valve_10() {
		return Solenoid_valve_10;
	}
	public void setSolenoid_valve_10(Integer solenoid_valve_10) {
		Solenoid_valve_10 = solenoid_valve_10;
	}
	public Integer getSolenoid_valve_11() {
		return Solenoid_valve_11;
	}
	public void setSolenoid_valve_11(Integer solenoid_valve_11) {
		Solenoid_valve_11 = solenoid_valve_11;
	}
	public Integer getSolenoid_valve_12() {
		return Solenoid_valve_12;
	}
	public void setSolenoid_valve_12(Integer solenoid_valve_12) {
		Solenoid_valve_12 = solenoid_valve_12;
	}
	public Integer getSolenoid_valve_13() {
		return Solenoid_valve_13;
	}
	public void setSolenoid_valve_13(Integer solenoid_valve_13) {
		Solenoid_valve_13 = solenoid_valve_13;
	}
	public Integer getSolenoid_valve_14() {
		return Solenoid_valve_14;
	}
	public void setSolenoid_valve_14(Integer solenoid_valve_14) {
		Solenoid_valve_14 = solenoid_valve_14;
	}
	public Integer getSolenoid_valve_15() {
		return Solenoid_valve_15;
	}
	public void setSolenoid_valve_15(Integer solenoid_valve_15) {
		Solenoid_valve_15 = solenoid_valve_15;
	}
	public Integer getSolenoid_valve_16() {
		return Solenoid_valve_16;
	}
	public void setSolenoid_valve_16(Integer solenoid_valve_16) {
		Solenoid_valve_16 = solenoid_valve_16;
	}
	public Integer getSolenoid_valve_17() {
		return Solenoid_valve_17;
	}
	public void setSolenoid_valve_17(Integer solenoid_valve_17) {
		Solenoid_valve_17 = solenoid_valve_17;
	}
	public Integer getSolenoid_valve_18() {
		return Solenoid_valve_18;
	}
	public void setSolenoid_valve_18(Integer solenoid_valve_18) {
		Solenoid_valve_18 = solenoid_valve_18;
	}
	public Integer getSolenoid_valve_19() {
		return Solenoid_valve_19;
	}
	public void setSolenoid_valve_19(Integer solenoid_valve_19) {
		Solenoid_valve_19 = solenoid_valve_19;
	}
	public Integer getSolenoid_valve_20() {
		return Solenoid_valve_20;
	}
	public void setSolenoid_valve_20(Integer solenoid_valve_20) {
		Solenoid_valve_20 = solenoid_valve_20;
	}
	public Integer getSolenoid_valve_21() {
		return Solenoid_valve_21;
	}
	public void setSolenoid_valve_21(Integer solenoid_valve_21) {
		Solenoid_valve_21 = solenoid_valve_21;
	}
	public Integer getSolenoid_valve_22() {
		return Solenoid_valve_22;
	}
	public void setSolenoid_valve_22(Integer solenoid_valve_22) {
		Solenoid_valve_22 = solenoid_valve_22;
	}
	public Integer getSolenoid_valve_23() {
		return Solenoid_valve_23;
	}
	public void setSolenoid_valve_23(Integer solenoid_valve_23) {
		Solenoid_valve_23 = solenoid_valve_23;
	}
	public Integer getSolenoid_valve_24() {
		return Solenoid_valve_24;
	}
	public void setSolenoid_valve_24(Integer solenoid_valve_24) {
		Solenoid_valve_24 = solenoid_valve_24;
	}
	public Integer getCTD_sensor_status() {
		return CTD_sensor_status;
	}
	public void setCTD_sensor_status(Integer cTD_sensor_status) {
		CTD_sensor_status = cTD_sensor_status;
	}
	public Integer getCO2_sensor_status() {
		return CO2_sensor_status;
	}
	public void setCO2_sensor_status(Integer cO2_sensor_status) {
		CO2_sensor_status = cO2_sensor_status;
	}
	public Integer getCH4_sensor_status() {
		return CH4_sensor_status;
	}
	public void setCH4_sensor_status(Integer cH4_sensor_status) {
		CH4_sensor_status = cH4_sensor_status;
	}
	@Override
	public String toString() {
		return "BbesData [TIME=" + TIME + ", Volt48=" + Volt48 + ", Abel48="
				+ Abel48 + ", Volt24=" + Volt24 + ", Abel24=" + Abel24
				+ ", Volt12=" + Volt12 + ", Abel12=" + Abel12
				+ ", Temperature=" + Temperature + ", Sensor_Temperature="
				+ Sensor_Temperature + ", CO2=" + CO2 + ", CH4=" + CH4
				+ ", Density=" + Density + ", Conductivity=" + Conductivity
				+ ", DoData=" + DoData + ", pH=" + pH + ", Pressure="
				+ Pressure + ", Salinity=" + Salinity + ", Calc=" + Calc
				+ ", BlockBattery=" + BlockBattery + ", Cultivating_bag_1="
				+ Cultivating_bag_1 + ", Cultivating_bag_2="
				+ Cultivating_bag_2 + ", Cultivating_bag_3="
				+ Cultivating_bag_3 + ", Cultivating_bag_4="
				+ Cultivating_bag_4 + ", Cultivating_bag_5="
				+ Cultivating_bag_5 + ", Cultivating_bag_6="
				+ Cultivating_bag_6 + ", Cultivating_bag_7="
				+ Cultivating_bag_7 + ", Cultivating_bag_8="
				+ Cultivating_bag_8 + ", Cultivating_bag_9="
				+ Cultivating_bag_9 + ", Cultivating_bag_10="
				+ Cultivating_bag_10 + ", Cultivating_bag_11="
				+ Cultivating_bag_11 + ", Cultivating_bag_12="
				+ Cultivating_bag_12 + ", Pump_1=" + Pump_1 + ", Pump_2="
				+ Pump_2 + ", Pump_3=" + Pump_3 + ", Pump_4=" + Pump_4
				+ ", Pump_5=" + Pump_5 + ", Solenoid_valve_1="
				+ Solenoid_valve_1 + ", Solenoid_valve_2=" + Solenoid_valve_2
				+ ", Solenoid_valve_3=" + Solenoid_valve_3
				+ ", Solenoid_valve_4=" + Solenoid_valve_4
				+ ", Solenoid_valve_5=" + Solenoid_valve_5
				+ ", Solenoid_valve_6=" + Solenoid_valve_6
				+ ", Solenoid_valve_7=" + Solenoid_valve_7
				+ ", Solenoid_valve_8=" + Solenoid_valve_8
				+ ", Solenoid_valve_9=" + Solenoid_valve_9
				+ ", Solenoid_valve_10=" + Solenoid_valve_10
				+ ", Solenoid_valve_11=" + Solenoid_valve_11
				+ ", Solenoid_valve_12=" + Solenoid_valve_12
				+ ", Solenoid_valve_13=" + Solenoid_valve_13
				+ ", Solenoid_valve_14=" + Solenoid_valve_14
				+ ", Solenoid_valve_15=" + Solenoid_valve_15
				+ ", Solenoid_valve_16=" + Solenoid_valve_16
				+ ", Solenoid_valve_17=" + Solenoid_valve_17
				+ ", Solenoid_valve_18=" + Solenoid_valve_18
				+ ", Solenoid_valve_19=" + Solenoid_valve_19
				+ ", Solenoid_valve_20=" + Solenoid_valve_20
				+ ", Solenoid_valve_21=" + Solenoid_valve_21
				+ ", Solenoid_valve_22=" + Solenoid_valve_22
				+ ", Solenoid_valve_23=" + Solenoid_valve_23
				+ ", Solenoid_valve_24=" + Solenoid_valve_24
				+ ", CTD_sensor_status=" + CTD_sensor_status
				+ ", CO2_sensor_status=" + CO2_sensor_status
				+ ", CH4_sensor_status=" + CH4_sensor_status + "]";
	}
	
	
	
}
