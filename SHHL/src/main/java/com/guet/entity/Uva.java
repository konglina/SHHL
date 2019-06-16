package com.guet.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Uva {
    private Date time;

    private BigDecimal pt1000Temperature;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public BigDecimal getPt1000Temperature() {
        return pt1000Temperature;
    }

    public void setPt1000Temperature(BigDecimal pt1000Temperature) {
        this.pt1000Temperature = pt1000Temperature;
    }
}