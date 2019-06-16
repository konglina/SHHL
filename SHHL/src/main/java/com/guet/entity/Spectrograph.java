package com.guet.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Spectrograph {
    private Date time;

    private Integer states;

    private BigDecimal consistency;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
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
}