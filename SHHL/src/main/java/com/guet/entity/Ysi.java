package com.guet.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Ysi {
    private Date TIME;

    private BigDecimal turbidity;

    private BigDecimal TSS;

    private BigDecimal chlorophyll;

    private BigDecimal BGA_PE;

    private BigDecimal ODO;

    private BigDecimal temperature;

    private BigDecimal specific_Conductance;

    private BigDecimal salinity;

    private BigDecimal pH;

    private BigDecimal ORP;

    private BigDecimal pressure;

    private BigDecimal depth;

    public Date getTIME() {
        return TIME;
    }

    public void setTIME(Date TIME) {
        this.TIME = TIME;
    }

    public BigDecimal getTurbidity() {
        return turbidity;
    }

    public void setTurbidity(BigDecimal turbidity) {
        this.turbidity = turbidity;
    }

    public BigDecimal getTSS() {
        return TSS;
    }

    public void setTSS(BigDecimal TSS) {
        this.TSS = TSS;
    }

    public BigDecimal getChlorophyll() {
        return chlorophyll;
    }

    public void setChlorophyll(BigDecimal chlorophyll) {
        this.chlorophyll = chlorophyll;
    }

    public BigDecimal getBGA_PE() {
        return BGA_PE;
    }

    public void setBGA_PE(BigDecimal BGA_PE) {
        this.BGA_PE = BGA_PE;
    }

    public BigDecimal getODO() {
        return ODO;
    }

    public void setODO(BigDecimal ODO) {
        this.ODO = ODO;
    }

    public BigDecimal getTemperature() {
        return temperature;
    }

    public void setTemperature(BigDecimal temperature) {
        this.temperature = temperature;
    }

    public BigDecimal getSpecific_Conductance() {
        return specific_Conductance;
    }

    public void setSpecific_Conductance(BigDecimal specific_Conductance) {
        this.specific_Conductance = specific_Conductance;
    }

    public BigDecimal getSalinity() {
        return salinity;
    }

    public void setSalinity(BigDecimal salinity) {
        this.salinity = salinity;
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

    public void setORP(BigDecimal ORP) {
        this.ORP = ORP;
    }

    public BigDecimal getPressure() {
        return pressure;
    }

    public void setPressure(BigDecimal pressure) {
        this.pressure = pressure;
    }

    public BigDecimal getDepth() {
        return depth;
    }

    public void setDepth(BigDecimal depth) {
        this.depth = depth;
    }
}