package com.guet.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BbesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BbesExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andTimeIsNull() {
            addCriterion("TIME is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("TIME is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("TIME =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("TIME <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("TIME >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("TIME >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("TIME <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("TIME <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("TIME in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("TIME not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("TIME between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("TIME not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andVolt48IsNull() {
            addCriterion("Volt48 is null");
            return (Criteria) this;
        }

        public Criteria andVolt48IsNotNull() {
            addCriterion("Volt48 is not null");
            return (Criteria) this;
        }

        public Criteria andVolt48EqualTo(BigDecimal value) {
            addCriterion("Volt48 =", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48NotEqualTo(BigDecimal value) {
            addCriterion("Volt48 <>", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48GreaterThan(BigDecimal value) {
            addCriterion("Volt48 >", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt48 >=", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48LessThan(BigDecimal value) {
            addCriterion("Volt48 <", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt48 <=", value, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48In(List<BigDecimal> values) {
            addCriterion("Volt48 in", values, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48NotIn(List<BigDecimal> values) {
            addCriterion("Volt48 not in", values, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt48 between", value1, value2, "volt48");
            return (Criteria) this;
        }

        public Criteria andVolt48NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt48 not between", value1, value2, "volt48");
            return (Criteria) this;
        }

        public Criteria andAbel48IsNull() {
            addCriterion("Abel48 is null");
            return (Criteria) this;
        }

        public Criteria andAbel48IsNotNull() {
            addCriterion("Abel48 is not null");
            return (Criteria) this;
        }

        public Criteria andAbel48EqualTo(BigDecimal value) {
            addCriterion("Abel48 =", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48NotEqualTo(BigDecimal value) {
            addCriterion("Abel48 <>", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48GreaterThan(BigDecimal value) {
            addCriterion("Abel48 >", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel48 >=", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48LessThan(BigDecimal value) {
            addCriterion("Abel48 <", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel48 <=", value, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48In(List<BigDecimal> values) {
            addCriterion("Abel48 in", values, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48NotIn(List<BigDecimal> values) {
            addCriterion("Abel48 not in", values, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel48 between", value1, value2, "abel48");
            return (Criteria) this;
        }

        public Criteria andAbel48NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel48 not between", value1, value2, "abel48");
            return (Criteria) this;
        }

        public Criteria andVolt24IsNull() {
            addCriterion("Volt24 is null");
            return (Criteria) this;
        }

        public Criteria andVolt24IsNotNull() {
            addCriterion("Volt24 is not null");
            return (Criteria) this;
        }

        public Criteria andVolt24EqualTo(BigDecimal value) {
            addCriterion("Volt24 =", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24NotEqualTo(BigDecimal value) {
            addCriterion("Volt24 <>", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24GreaterThan(BigDecimal value) {
            addCriterion("Volt24 >", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt24 >=", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24LessThan(BigDecimal value) {
            addCriterion("Volt24 <", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt24 <=", value, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24In(List<BigDecimal> values) {
            addCriterion("Volt24 in", values, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24NotIn(List<BigDecimal> values) {
            addCriterion("Volt24 not in", values, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt24 between", value1, value2, "volt24");
            return (Criteria) this;
        }

        public Criteria andVolt24NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt24 not between", value1, value2, "volt24");
            return (Criteria) this;
        }

        public Criteria andAbel24IsNull() {
            addCriterion("Abel24 is null");
            return (Criteria) this;
        }

        public Criteria andAbel24IsNotNull() {
            addCriterion("Abel24 is not null");
            return (Criteria) this;
        }

        public Criteria andAbel24EqualTo(BigDecimal value) {
            addCriterion("Abel24 =", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24NotEqualTo(BigDecimal value) {
            addCriterion("Abel24 <>", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24GreaterThan(BigDecimal value) {
            addCriterion("Abel24 >", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel24 >=", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24LessThan(BigDecimal value) {
            addCriterion("Abel24 <", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel24 <=", value, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24In(List<BigDecimal> values) {
            addCriterion("Abel24 in", values, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24NotIn(List<BigDecimal> values) {
            addCriterion("Abel24 not in", values, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel24 between", value1, value2, "abel24");
            return (Criteria) this;
        }

        public Criteria andAbel24NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel24 not between", value1, value2, "abel24");
            return (Criteria) this;
        }

        public Criteria andVolt12IsNull() {
            addCriterion("Volt12 is null");
            return (Criteria) this;
        }

        public Criteria andVolt12IsNotNull() {
            addCriterion("Volt12 is not null");
            return (Criteria) this;
        }

        public Criteria andVolt12EqualTo(BigDecimal value) {
            addCriterion("Volt12 =", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12NotEqualTo(BigDecimal value) {
            addCriterion("Volt12 <>", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12GreaterThan(BigDecimal value) {
            addCriterion("Volt12 >", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt12 >=", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12LessThan(BigDecimal value) {
            addCriterion("Volt12 <", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Volt12 <=", value, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12In(List<BigDecimal> values) {
            addCriterion("Volt12 in", values, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12NotIn(List<BigDecimal> values) {
            addCriterion("Volt12 not in", values, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt12 between", value1, value2, "volt12");
            return (Criteria) this;
        }

        public Criteria andVolt12NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Volt12 not between", value1, value2, "volt12");
            return (Criteria) this;
        }

        public Criteria andAbel12IsNull() {
            addCriterion("Abel12 is null");
            return (Criteria) this;
        }

        public Criteria andAbel12IsNotNull() {
            addCriterion("Abel12 is not null");
            return (Criteria) this;
        }

        public Criteria andAbel12EqualTo(BigDecimal value) {
            addCriterion("Abel12 =", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12NotEqualTo(BigDecimal value) {
            addCriterion("Abel12 <>", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12GreaterThan(BigDecimal value) {
            addCriterion("Abel12 >", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel12 >=", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12LessThan(BigDecimal value) {
            addCriterion("Abel12 <", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Abel12 <=", value, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12In(List<BigDecimal> values) {
            addCriterion("Abel12 in", values, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12NotIn(List<BigDecimal> values) {
            addCriterion("Abel12 not in", values, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel12 between", value1, value2, "abel12");
            return (Criteria) this;
        }

        public Criteria andAbel12NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Abel12 not between", value1, value2, "abel12");
            return (Criteria) this;
        }

        public Criteria andTemperatureIsNull() {
            addCriterion("Temperature is null");
            return (Criteria) this;
        }

        public Criteria andTemperatureIsNotNull() {
            addCriterion("Temperature is not null");
            return (Criteria) this;
        }

        public Criteria andTemperatureEqualTo(BigDecimal value) {
            addCriterion("Temperature =", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureNotEqualTo(BigDecimal value) {
            addCriterion("Temperature <>", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureGreaterThan(BigDecimal value) {
            addCriterion("Temperature >", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature >=", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureLessThan(BigDecimal value) {
            addCriterion("Temperature <", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature <=", value, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureIn(List<BigDecimal> values) {
            addCriterion("Temperature in", values, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureNotIn(List<BigDecimal> values) {
            addCriterion("Temperature not in", values, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature between", value1, value2, "temperature");
            return (Criteria) this;
        }

        public Criteria andTemperatureNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature not between", value1, value2, "temperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureIsNull() {
            addCriterion("Sensor_Temperature is null");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureIsNotNull() {
            addCriterion("Sensor_Temperature is not null");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureEqualTo(BigDecimal value) {
            addCriterion("Sensor_Temperature =", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureNotEqualTo(BigDecimal value) {
            addCriterion("Sensor_Temperature <>", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureGreaterThan(BigDecimal value) {
            addCriterion("Sensor_Temperature >", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Sensor_Temperature >=", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureLessThan(BigDecimal value) {
            addCriterion("Sensor_Temperature <", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Sensor_Temperature <=", value, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureIn(List<BigDecimal> values) {
            addCriterion("Sensor_Temperature in", values, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureNotIn(List<BigDecimal> values) {
            addCriterion("Sensor_Temperature not in", values, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Sensor_Temperature between", value1, value2, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andSensorTemperatureNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Sensor_Temperature not between", value1, value2, "sensorTemperature");
            return (Criteria) this;
        }

        public Criteria andCo2IsNull() {
            addCriterion("CO2 is null");
            return (Criteria) this;
        }

        public Criteria andCo2IsNotNull() {
            addCriterion("CO2 is not null");
            return (Criteria) this;
        }

        public Criteria andCo2EqualTo(BigDecimal value) {
            addCriterion("CO2 =", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2NotEqualTo(BigDecimal value) {
            addCriterion("CO2 <>", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2GreaterThan(BigDecimal value) {
            addCriterion("CO2 >", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("CO2 >=", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2LessThan(BigDecimal value) {
            addCriterion("CO2 <", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2LessThanOrEqualTo(BigDecimal value) {
            addCriterion("CO2 <=", value, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2In(List<BigDecimal> values) {
            addCriterion("CO2 in", values, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2NotIn(List<BigDecimal> values) {
            addCriterion("CO2 not in", values, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("CO2 between", value1, value2, "co2");
            return (Criteria) this;
        }

        public Criteria andCo2NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("CO2 not between", value1, value2, "co2");
            return (Criteria) this;
        }

        public Criteria andCh4IsNull() {
            addCriterion("CH4 is null");
            return (Criteria) this;
        }

        public Criteria andCh4IsNotNull() {
            addCriterion("CH4 is not null");
            return (Criteria) this;
        }

        public Criteria andCh4EqualTo(BigDecimal value) {
            addCriterion("CH4 =", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4NotEqualTo(BigDecimal value) {
            addCriterion("CH4 <>", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4GreaterThan(BigDecimal value) {
            addCriterion("CH4 >", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("CH4 >=", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4LessThan(BigDecimal value) {
            addCriterion("CH4 <", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4LessThanOrEqualTo(BigDecimal value) {
            addCriterion("CH4 <=", value, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4In(List<BigDecimal> values) {
            addCriterion("CH4 in", values, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4NotIn(List<BigDecimal> values) {
            addCriterion("CH4 not in", values, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("CH4 between", value1, value2, "ch4");
            return (Criteria) this;
        }

        public Criteria andCh4NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("CH4 not between", value1, value2, "ch4");
            return (Criteria) this;
        }

        public Criteria andDensityIsNull() {
            addCriterion("Density is null");
            return (Criteria) this;
        }

        public Criteria andDensityIsNotNull() {
            addCriterion("Density is not null");
            return (Criteria) this;
        }

        public Criteria andDensityEqualTo(BigDecimal value) {
            addCriterion("Density =", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityNotEqualTo(BigDecimal value) {
            addCriterion("Density <>", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityGreaterThan(BigDecimal value) {
            addCriterion("Density >", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Density >=", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityLessThan(BigDecimal value) {
            addCriterion("Density <", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Density <=", value, "density");
            return (Criteria) this;
        }

        public Criteria andDensityIn(List<BigDecimal> values) {
            addCriterion("Density in", values, "density");
            return (Criteria) this;
        }

        public Criteria andDensityNotIn(List<BigDecimal> values) {
            addCriterion("Density not in", values, "density");
            return (Criteria) this;
        }

        public Criteria andDensityBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Density between", value1, value2, "density");
            return (Criteria) this;
        }

        public Criteria andDensityNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Density not between", value1, value2, "density");
            return (Criteria) this;
        }

        public Criteria andConductivityIsNull() {
            addCriterion("Conductivity is null");
            return (Criteria) this;
        }

        public Criteria andConductivityIsNotNull() {
            addCriterion("Conductivity is not null");
            return (Criteria) this;
        }

        public Criteria andConductivityEqualTo(BigDecimal value) {
            addCriterion("Conductivity =", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityNotEqualTo(BigDecimal value) {
            addCriterion("Conductivity <>", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityGreaterThan(BigDecimal value) {
            addCriterion("Conductivity >", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Conductivity >=", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityLessThan(BigDecimal value) {
            addCriterion("Conductivity <", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Conductivity <=", value, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityIn(List<BigDecimal> values) {
            addCriterion("Conductivity in", values, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityNotIn(List<BigDecimal> values) {
            addCriterion("Conductivity not in", values, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Conductivity between", value1, value2, "conductivity");
            return (Criteria) this;
        }

        public Criteria andConductivityNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Conductivity not between", value1, value2, "conductivity");
            return (Criteria) this;
        }

        public Criteria andBbesDoIsNull() {
            addCriterion("Do is null");
            return (Criteria) this;
        }

        public Criteria andBbesDoIsNotNull() {
            addCriterion("Do is not null");
            return (Criteria) this;
        }

        public Criteria andBbesDoEqualTo(BigDecimal value) {
            addCriterion("Do =", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoNotEqualTo(BigDecimal value) {
            addCriterion("Do <>", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoGreaterThan(BigDecimal value) {
            addCriterion("Do >", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Do >=", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoLessThan(BigDecimal value) {
            addCriterion("Do <", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Do <=", value, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoIn(List<BigDecimal> values) {
            addCriterion("Do in", values, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoNotIn(List<BigDecimal> values) {
            addCriterion("Do not in", values, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Do between", value1, value2, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andBbesDoNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Do not between", value1, value2, "BbesDo");
            return (Criteria) this;
        }

        public Criteria andPhIsNull() {
            addCriterion("pH is null");
            return (Criteria) this;
        }

        public Criteria andPhIsNotNull() {
            addCriterion("pH is not null");
            return (Criteria) this;
        }

        public Criteria andPhEqualTo(BigDecimal value) {
            addCriterion("pH =", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhNotEqualTo(BigDecimal value) {
            addCriterion("pH <>", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhGreaterThan(BigDecimal value) {
            addCriterion("pH >", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("pH >=", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhLessThan(BigDecimal value) {
            addCriterion("pH <", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhLessThanOrEqualTo(BigDecimal value) {
            addCriterion("pH <=", value, "ph");
            return (Criteria) this;
        }

        public Criteria andPhIn(List<BigDecimal> values) {
            addCriterion("pH in", values, "ph");
            return (Criteria) this;
        }

        public Criteria andPhNotIn(List<BigDecimal> values) {
            addCriterion("pH not in", values, "ph");
            return (Criteria) this;
        }

        public Criteria andPhBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pH between", value1, value2, "ph");
            return (Criteria) this;
        }

        public Criteria andPhNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pH not between", value1, value2, "ph");
            return (Criteria) this;
        }

        public Criteria andPressureIsNull() {
            addCriterion("Pressure is null");
            return (Criteria) this;
        }

        public Criteria andPressureIsNotNull() {
            addCriterion("Pressure is not null");
            return (Criteria) this;
        }

        public Criteria andPressureEqualTo(BigDecimal value) {
            addCriterion("Pressure =", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureNotEqualTo(BigDecimal value) {
            addCriterion("Pressure <>", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureGreaterThan(BigDecimal value) {
            addCriterion("Pressure >", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Pressure >=", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureLessThan(BigDecimal value) {
            addCriterion("Pressure <", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Pressure <=", value, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureIn(List<BigDecimal> values) {
            addCriterion("Pressure in", values, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureNotIn(List<BigDecimal> values) {
            addCriterion("Pressure not in", values, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Pressure between", value1, value2, "pressure");
            return (Criteria) this;
        }

        public Criteria andPressureNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Pressure not between", value1, value2, "pressure");
            return (Criteria) this;
        }

        public Criteria andSalinityIsNull() {
            addCriterion("Salinity is null");
            return (Criteria) this;
        }

        public Criteria andSalinityIsNotNull() {
            addCriterion("Salinity is not null");
            return (Criteria) this;
        }

        public Criteria andSalinityEqualTo(BigDecimal value) {
            addCriterion("Salinity =", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityNotEqualTo(BigDecimal value) {
            addCriterion("Salinity <>", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityGreaterThan(BigDecimal value) {
            addCriterion("Salinity >", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Salinity >=", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityLessThan(BigDecimal value) {
            addCriterion("Salinity <", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Salinity <=", value, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityIn(List<BigDecimal> values) {
            addCriterion("Salinity in", values, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityNotIn(List<BigDecimal> values) {
            addCriterion("Salinity not in", values, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Salinity between", value1, value2, "salinity");
            return (Criteria) this;
        }

        public Criteria andSalinityNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Salinity not between", value1, value2, "salinity");
            return (Criteria) this;
        }

        public Criteria andCalcIsNull() {
            addCriterion("Calc is null");
            return (Criteria) this;
        }

        public Criteria andCalcIsNotNull() {
            addCriterion("Calc is not null");
            return (Criteria) this;
        }

        public Criteria andCalcEqualTo(BigDecimal value) {
            addCriterion("Calc =", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcNotEqualTo(BigDecimal value) {
            addCriterion("Calc <>", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcGreaterThan(BigDecimal value) {
            addCriterion("Calc >", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Calc >=", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcLessThan(BigDecimal value) {
            addCriterion("Calc <", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Calc <=", value, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcIn(List<BigDecimal> values) {
            addCriterion("Calc in", values, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcNotIn(List<BigDecimal> values) {
            addCriterion("Calc not in", values, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Calc between", value1, value2, "calc");
            return (Criteria) this;
        }

        public Criteria andCalcNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Calc not between", value1, value2, "calc");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryIsNull() {
            addCriterion("BlockBattery is null");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryIsNotNull() {
            addCriterion("BlockBattery is not null");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryEqualTo(BigDecimal value) {
            addCriterion("BlockBattery =", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryNotEqualTo(BigDecimal value) {
            addCriterion("BlockBattery <>", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryGreaterThan(BigDecimal value) {
            addCriterion("BlockBattery >", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("BlockBattery >=", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryLessThan(BigDecimal value) {
            addCriterion("BlockBattery <", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryLessThanOrEqualTo(BigDecimal value) {
            addCriterion("BlockBattery <=", value, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryIn(List<BigDecimal> values) {
            addCriterion("BlockBattery in", values, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryNotIn(List<BigDecimal> values) {
            addCriterion("BlockBattery not in", values, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("BlockBattery between", value1, value2, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andBlockbatteryNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("BlockBattery not between", value1, value2, "blockbattery");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1IsNull() {
            addCriterion("Cultivating_bag_1 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1IsNotNull() {
            addCriterion("Cultivating_bag_1 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1EqualTo(Integer value) {
            addCriterion("Cultivating_bag_1 =", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_1 <>", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_1 >", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_1 >=", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1LessThan(Integer value) {
            addCriterion("Cultivating_bag_1 <", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_1 <=", value, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1In(List<Integer> values) {
            addCriterion("Cultivating_bag_1 in", values, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_1 not in", values, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_1 between", value1, value2, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag1NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_1 not between", value1, value2, "cultivatingBag1");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2IsNull() {
            addCriterion("Cultivating_bag_2 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2IsNotNull() {
            addCriterion("Cultivating_bag_2 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2EqualTo(Integer value) {
            addCriterion("Cultivating_bag_2 =", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_2 <>", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_2 >", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_2 >=", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2LessThan(Integer value) {
            addCriterion("Cultivating_bag_2 <", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_2 <=", value, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2In(List<Integer> values) {
            addCriterion("Cultivating_bag_2 in", values, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_2 not in", values, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_2 between", value1, value2, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag2NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_2 not between", value1, value2, "cultivatingBag2");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3IsNull() {
            addCriterion("Cultivating_bag_3 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3IsNotNull() {
            addCriterion("Cultivating_bag_3 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3EqualTo(Integer value) {
            addCriterion("Cultivating_bag_3 =", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_3 <>", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_3 >", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_3 >=", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3LessThan(Integer value) {
            addCriterion("Cultivating_bag_3 <", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_3 <=", value, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3In(List<Integer> values) {
            addCriterion("Cultivating_bag_3 in", values, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_3 not in", values, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_3 between", value1, value2, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag3NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_3 not between", value1, value2, "cultivatingBag3");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4IsNull() {
            addCriterion("Cultivating_bag_4 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4IsNotNull() {
            addCriterion("Cultivating_bag_4 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4EqualTo(Integer value) {
            addCriterion("Cultivating_bag_4 =", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_4 <>", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_4 >", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_4 >=", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4LessThan(Integer value) {
            addCriterion("Cultivating_bag_4 <", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_4 <=", value, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4In(List<Integer> values) {
            addCriterion("Cultivating_bag_4 in", values, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_4 not in", values, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_4 between", value1, value2, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag4NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_4 not between", value1, value2, "cultivatingBag4");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5IsNull() {
            addCriterion("Cultivating_bag_5 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5IsNotNull() {
            addCriterion("Cultivating_bag_5 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5EqualTo(Integer value) {
            addCriterion("Cultivating_bag_5 =", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_5 <>", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_5 >", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_5 >=", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5LessThan(Integer value) {
            addCriterion("Cultivating_bag_5 <", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_5 <=", value, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5In(List<Integer> values) {
            addCriterion("Cultivating_bag_5 in", values, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_5 not in", values, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_5 between", value1, value2, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag5NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_5 not between", value1, value2, "cultivatingBag5");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6IsNull() {
            addCriterion("Cultivating_bag_6 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6IsNotNull() {
            addCriterion("Cultivating_bag_6 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6EqualTo(Integer value) {
            addCriterion("Cultivating_bag_6 =", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_6 <>", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_6 >", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_6 >=", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6LessThan(Integer value) {
            addCriterion("Cultivating_bag_6 <", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_6 <=", value, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6In(List<Integer> values) {
            addCriterion("Cultivating_bag_6 in", values, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_6 not in", values, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_6 between", value1, value2, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag6NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_6 not between", value1, value2, "cultivatingBag6");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7IsNull() {
            addCriterion("Cultivating_bag_7 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7IsNotNull() {
            addCriterion("Cultivating_bag_7 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7EqualTo(Integer value) {
            addCriterion("Cultivating_bag_7 =", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_7 <>", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_7 >", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_7 >=", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7LessThan(Integer value) {
            addCriterion("Cultivating_bag_7 <", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_7 <=", value, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7In(List<Integer> values) {
            addCriterion("Cultivating_bag_7 in", values, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_7 not in", values, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_7 between", value1, value2, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag7NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_7 not between", value1, value2, "cultivatingBag7");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8IsNull() {
            addCriterion("Cultivating_bag_8 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8IsNotNull() {
            addCriterion("Cultivating_bag_8 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8EqualTo(Integer value) {
            addCriterion("Cultivating_bag_8 =", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_8 <>", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_8 >", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_8 >=", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8LessThan(Integer value) {
            addCriterion("Cultivating_bag_8 <", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_8 <=", value, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8In(List<Integer> values) {
            addCriterion("Cultivating_bag_8 in", values, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_8 not in", values, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_8 between", value1, value2, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag8NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_8 not between", value1, value2, "cultivatingBag8");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9IsNull() {
            addCriterion("Cultivating_bag_9 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9IsNotNull() {
            addCriterion("Cultivating_bag_9 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9EqualTo(Integer value) {
            addCriterion("Cultivating_bag_9 =", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_9 <>", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_9 >", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_9 >=", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9LessThan(Integer value) {
            addCriterion("Cultivating_bag_9 <", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_9 <=", value, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9In(List<Integer> values) {
            addCriterion("Cultivating_bag_9 in", values, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_9 not in", values, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_9 between", value1, value2, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag9NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_9 not between", value1, value2, "cultivatingBag9");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10IsNull() {
            addCriterion("Cultivating_bag_10 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10IsNotNull() {
            addCriterion("Cultivating_bag_10 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10EqualTo(Integer value) {
            addCriterion("Cultivating_bag_10 =", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_10 <>", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_10 >", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_10 >=", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10LessThan(Integer value) {
            addCriterion("Cultivating_bag_10 <", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_10 <=", value, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10In(List<Integer> values) {
            addCriterion("Cultivating_bag_10 in", values, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_10 not in", values, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_10 between", value1, value2, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag10NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_10 not between", value1, value2, "cultivatingBag10");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11IsNull() {
            addCriterion("Cultivating_bag_11 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11IsNotNull() {
            addCriterion("Cultivating_bag_11 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11EqualTo(Integer value) {
            addCriterion("Cultivating_bag_11 =", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_11 <>", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_11 >", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_11 >=", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11LessThan(Integer value) {
            addCriterion("Cultivating_bag_11 <", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_11 <=", value, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11In(List<Integer> values) {
            addCriterion("Cultivating_bag_11 in", values, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_11 not in", values, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_11 between", value1, value2, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag11NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_11 not between", value1, value2, "cultivatingBag11");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12IsNull() {
            addCriterion("Cultivating_bag_12 is null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12IsNotNull() {
            addCriterion("Cultivating_bag_12 is not null");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12EqualTo(Integer value) {
            addCriterion("Cultivating_bag_12 =", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12NotEqualTo(Integer value) {
            addCriterion("Cultivating_bag_12 <>", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12GreaterThan(Integer value) {
            addCriterion("Cultivating_bag_12 >", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12GreaterThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_12 >=", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12LessThan(Integer value) {
            addCriterion("Cultivating_bag_12 <", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12LessThanOrEqualTo(Integer value) {
            addCriterion("Cultivating_bag_12 <=", value, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12In(List<Integer> values) {
            addCriterion("Cultivating_bag_12 in", values, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12NotIn(List<Integer> values) {
            addCriterion("Cultivating_bag_12 not in", values, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12Between(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_12 between", value1, value2, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andCultivatingBag12NotBetween(Integer value1, Integer value2) {
            addCriterion("Cultivating_bag_12 not between", value1, value2, "cultivatingBag12");
            return (Criteria) this;
        }

        public Criteria andPump1IsNull() {
            addCriterion("Pump_1 is null");
            return (Criteria) this;
        }

        public Criteria andPump1IsNotNull() {
            addCriterion("Pump_1 is not null");
            return (Criteria) this;
        }

        public Criteria andPump1EqualTo(Integer value) {
            addCriterion("Pump_1 =", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1NotEqualTo(Integer value) {
            addCriterion("Pump_1 <>", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1GreaterThan(Integer value) {
            addCriterion("Pump_1 >", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1GreaterThanOrEqualTo(Integer value) {
            addCriterion("Pump_1 >=", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1LessThan(Integer value) {
            addCriterion("Pump_1 <", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1LessThanOrEqualTo(Integer value) {
            addCriterion("Pump_1 <=", value, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1In(List<Integer> values) {
            addCriterion("Pump_1 in", values, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1NotIn(List<Integer> values) {
            addCriterion("Pump_1 not in", values, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1Between(Integer value1, Integer value2) {
            addCriterion("Pump_1 between", value1, value2, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump1NotBetween(Integer value1, Integer value2) {
            addCriterion("Pump_1 not between", value1, value2, "pump1");
            return (Criteria) this;
        }

        public Criteria andPump2IsNull() {
            addCriterion("Pump_2 is null");
            return (Criteria) this;
        }

        public Criteria andPump2IsNotNull() {
            addCriterion("Pump_2 is not null");
            return (Criteria) this;
        }

        public Criteria andPump2EqualTo(Integer value) {
            addCriterion("Pump_2 =", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2NotEqualTo(Integer value) {
            addCriterion("Pump_2 <>", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2GreaterThan(Integer value) {
            addCriterion("Pump_2 >", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2GreaterThanOrEqualTo(Integer value) {
            addCriterion("Pump_2 >=", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2LessThan(Integer value) {
            addCriterion("Pump_2 <", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2LessThanOrEqualTo(Integer value) {
            addCriterion("Pump_2 <=", value, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2In(List<Integer> values) {
            addCriterion("Pump_2 in", values, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2NotIn(List<Integer> values) {
            addCriterion("Pump_2 not in", values, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2Between(Integer value1, Integer value2) {
            addCriterion("Pump_2 between", value1, value2, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump2NotBetween(Integer value1, Integer value2) {
            addCriterion("Pump_2 not between", value1, value2, "pump2");
            return (Criteria) this;
        }

        public Criteria andPump3IsNull() {
            addCriterion("Pump_3 is null");
            return (Criteria) this;
        }

        public Criteria andPump3IsNotNull() {
            addCriterion("Pump_3 is not null");
            return (Criteria) this;
        }

        public Criteria andPump3EqualTo(Integer value) {
            addCriterion("Pump_3 =", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3NotEqualTo(Integer value) {
            addCriterion("Pump_3 <>", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3GreaterThan(Integer value) {
            addCriterion("Pump_3 >", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3GreaterThanOrEqualTo(Integer value) {
            addCriterion("Pump_3 >=", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3LessThan(Integer value) {
            addCriterion("Pump_3 <", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3LessThanOrEqualTo(Integer value) {
            addCriterion("Pump_3 <=", value, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3In(List<Integer> values) {
            addCriterion("Pump_3 in", values, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3NotIn(List<Integer> values) {
            addCriterion("Pump_3 not in", values, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3Between(Integer value1, Integer value2) {
            addCriterion("Pump_3 between", value1, value2, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump3NotBetween(Integer value1, Integer value2) {
            addCriterion("Pump_3 not between", value1, value2, "pump3");
            return (Criteria) this;
        }

        public Criteria andPump4IsNull() {
            addCriterion("Pump_4 is null");
            return (Criteria) this;
        }

        public Criteria andPump4IsNotNull() {
            addCriterion("Pump_4 is not null");
            return (Criteria) this;
        }

        public Criteria andPump4EqualTo(Integer value) {
            addCriterion("Pump_4 =", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4NotEqualTo(Integer value) {
            addCriterion("Pump_4 <>", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4GreaterThan(Integer value) {
            addCriterion("Pump_4 >", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4GreaterThanOrEqualTo(Integer value) {
            addCriterion("Pump_4 >=", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4LessThan(Integer value) {
            addCriterion("Pump_4 <", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4LessThanOrEqualTo(Integer value) {
            addCriterion("Pump_4 <=", value, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4In(List<Integer> values) {
            addCriterion("Pump_4 in", values, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4NotIn(List<Integer> values) {
            addCriterion("Pump_4 not in", values, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4Between(Integer value1, Integer value2) {
            addCriterion("Pump_4 between", value1, value2, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump4NotBetween(Integer value1, Integer value2) {
            addCriterion("Pump_4 not between", value1, value2, "pump4");
            return (Criteria) this;
        }

        public Criteria andPump5IsNull() {
            addCriterion("Pump_5 is null");
            return (Criteria) this;
        }

        public Criteria andPump5IsNotNull() {
            addCriterion("Pump_5 is not null");
            return (Criteria) this;
        }

        public Criteria andPump5EqualTo(Integer value) {
            addCriterion("Pump_5 =", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5NotEqualTo(Integer value) {
            addCriterion("Pump_5 <>", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5GreaterThan(Integer value) {
            addCriterion("Pump_5 >", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5GreaterThanOrEqualTo(Integer value) {
            addCriterion("Pump_5 >=", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5LessThan(Integer value) {
            addCriterion("Pump_5 <", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5LessThanOrEqualTo(Integer value) {
            addCriterion("Pump_5 <=", value, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5In(List<Integer> values) {
            addCriterion("Pump_5 in", values, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5NotIn(List<Integer> values) {
            addCriterion("Pump_5 not in", values, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5Between(Integer value1, Integer value2) {
            addCriterion("Pump_5 between", value1, value2, "pump5");
            return (Criteria) this;
        }

        public Criteria andPump5NotBetween(Integer value1, Integer value2) {
            addCriterion("Pump_5 not between", value1, value2, "pump5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1IsNull() {
            addCriterion("Solenoid_valve_1 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1IsNotNull() {
            addCriterion("Solenoid_valve_1 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1EqualTo(Integer value) {
            addCriterion("Solenoid_valve_1 =", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_1 <>", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_1 >", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_1 >=", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1LessThan(Integer value) {
            addCriterion("Solenoid_valve_1 <", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_1 <=", value, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1In(List<Integer> values) {
            addCriterion("Solenoid_valve_1 in", values, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_1 not in", values, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_1 between", value1, value2, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve1NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_1 not between", value1, value2, "solenoidValve1");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2IsNull() {
            addCriterion("Solenoid_valve_2 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2IsNotNull() {
            addCriterion("Solenoid_valve_2 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2EqualTo(Integer value) {
            addCriterion("Solenoid_valve_2 =", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_2 <>", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_2 >", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_2 >=", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2LessThan(Integer value) {
            addCriterion("Solenoid_valve_2 <", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_2 <=", value, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2In(List<Integer> values) {
            addCriterion("Solenoid_valve_2 in", values, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_2 not in", values, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_2 between", value1, value2, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve2NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_2 not between", value1, value2, "solenoidValve2");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3IsNull() {
            addCriterion("Solenoid_valve_3 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3IsNotNull() {
            addCriterion("Solenoid_valve_3 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3EqualTo(Integer value) {
            addCriterion("Solenoid_valve_3 =", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_3 <>", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_3 >", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_3 >=", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3LessThan(Integer value) {
            addCriterion("Solenoid_valve_3 <", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_3 <=", value, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3In(List<Integer> values) {
            addCriterion("Solenoid_valve_3 in", values, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_3 not in", values, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_3 between", value1, value2, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve3NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_3 not between", value1, value2, "solenoidValve3");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4IsNull() {
            addCriterion("Solenoid_valve_4 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4IsNotNull() {
            addCriterion("Solenoid_valve_4 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4EqualTo(Integer value) {
            addCriterion("Solenoid_valve_4 =", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_4 <>", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_4 >", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_4 >=", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4LessThan(Integer value) {
            addCriterion("Solenoid_valve_4 <", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_4 <=", value, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4In(List<Integer> values) {
            addCriterion("Solenoid_valve_4 in", values, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_4 not in", values, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_4 between", value1, value2, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve4NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_4 not between", value1, value2, "solenoidValve4");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5IsNull() {
            addCriterion("Solenoid_valve_5 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5IsNotNull() {
            addCriterion("Solenoid_valve_5 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5EqualTo(Integer value) {
            addCriterion("Solenoid_valve_5 =", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_5 <>", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_5 >", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_5 >=", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5LessThan(Integer value) {
            addCriterion("Solenoid_valve_5 <", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_5 <=", value, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5In(List<Integer> values) {
            addCriterion("Solenoid_valve_5 in", values, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_5 not in", values, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_5 between", value1, value2, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve5NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_5 not between", value1, value2, "solenoidValve5");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6IsNull() {
            addCriterion("Solenoid_valve_6 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6IsNotNull() {
            addCriterion("Solenoid_valve_6 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6EqualTo(Integer value) {
            addCriterion("Solenoid_valve_6 =", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_6 <>", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_6 >", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_6 >=", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6LessThan(Integer value) {
            addCriterion("Solenoid_valve_6 <", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_6 <=", value, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6In(List<Integer> values) {
            addCriterion("Solenoid_valve_6 in", values, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_6 not in", values, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_6 between", value1, value2, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve6NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_6 not between", value1, value2, "solenoidValve6");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7IsNull() {
            addCriterion("Solenoid_valve_7 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7IsNotNull() {
            addCriterion("Solenoid_valve_7 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7EqualTo(Integer value) {
            addCriterion("Solenoid_valve_7 =", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_7 <>", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_7 >", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_7 >=", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7LessThan(Integer value) {
            addCriterion("Solenoid_valve_7 <", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_7 <=", value, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7In(List<Integer> values) {
            addCriterion("Solenoid_valve_7 in", values, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_7 not in", values, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_7 between", value1, value2, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve7NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_7 not between", value1, value2, "solenoidValve7");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8IsNull() {
            addCriterion("Solenoid_valve_8 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8IsNotNull() {
            addCriterion("Solenoid_valve_8 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8EqualTo(Integer value) {
            addCriterion("Solenoid_valve_8 =", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_8 <>", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_8 >", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_8 >=", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8LessThan(Integer value) {
            addCriterion("Solenoid_valve_8 <", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_8 <=", value, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8In(List<Integer> values) {
            addCriterion("Solenoid_valve_8 in", values, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_8 not in", values, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_8 between", value1, value2, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve8NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_8 not between", value1, value2, "solenoidValve8");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9IsNull() {
            addCriterion("Solenoid_valve_9 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9IsNotNull() {
            addCriterion("Solenoid_valve_9 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9EqualTo(Integer value) {
            addCriterion("Solenoid_valve_9 =", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_9 <>", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_9 >", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_9 >=", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9LessThan(Integer value) {
            addCriterion("Solenoid_valve_9 <", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_9 <=", value, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9In(List<Integer> values) {
            addCriterion("Solenoid_valve_9 in", values, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_9 not in", values, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_9 between", value1, value2, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve9NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_9 not between", value1, value2, "solenoidValve9");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10IsNull() {
            addCriterion("Solenoid_valve_10 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10IsNotNull() {
            addCriterion("Solenoid_valve_10 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10EqualTo(Integer value) {
            addCriterion("Solenoid_valve_10 =", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_10 <>", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_10 >", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_10 >=", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10LessThan(Integer value) {
            addCriterion("Solenoid_valve_10 <", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_10 <=", value, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10In(List<Integer> values) {
            addCriterion("Solenoid_valve_10 in", values, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_10 not in", values, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_10 between", value1, value2, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve10NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_10 not between", value1, value2, "solenoidValve10");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11IsNull() {
            addCriterion("Solenoid_valve_11 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11IsNotNull() {
            addCriterion("Solenoid_valve_11 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11EqualTo(Integer value) {
            addCriterion("Solenoid_valve_11 =", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_11 <>", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_11 >", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_11 >=", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11LessThan(Integer value) {
            addCriterion("Solenoid_valve_11 <", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_11 <=", value, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11In(List<Integer> values) {
            addCriterion("Solenoid_valve_11 in", values, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_11 not in", values, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_11 between", value1, value2, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve11NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_11 not between", value1, value2, "solenoidValve11");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12IsNull() {
            addCriterion("Solenoid_valve_12 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12IsNotNull() {
            addCriterion("Solenoid_valve_12 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12EqualTo(Integer value) {
            addCriterion("Solenoid_valve_12 =", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_12 <>", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_12 >", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_12 >=", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12LessThan(Integer value) {
            addCriterion("Solenoid_valve_12 <", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_12 <=", value, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12In(List<Integer> values) {
            addCriterion("Solenoid_valve_12 in", values, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_12 not in", values, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_12 between", value1, value2, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve12NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_12 not between", value1, value2, "solenoidValve12");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13IsNull() {
            addCriterion("Solenoid_valve_13 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13IsNotNull() {
            addCriterion("Solenoid_valve_13 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13EqualTo(Integer value) {
            addCriterion("Solenoid_valve_13 =", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_13 <>", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_13 >", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_13 >=", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13LessThan(Integer value) {
            addCriterion("Solenoid_valve_13 <", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_13 <=", value, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13In(List<Integer> values) {
            addCriterion("Solenoid_valve_13 in", values, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_13 not in", values, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_13 between", value1, value2, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve13NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_13 not between", value1, value2, "solenoidValve13");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14IsNull() {
            addCriterion("Solenoid_valve_14 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14IsNotNull() {
            addCriterion("Solenoid_valve_14 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14EqualTo(Integer value) {
            addCriterion("Solenoid_valve_14 =", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_14 <>", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_14 >", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_14 >=", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14LessThan(Integer value) {
            addCriterion("Solenoid_valve_14 <", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_14 <=", value, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14In(List<Integer> values) {
            addCriterion("Solenoid_valve_14 in", values, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_14 not in", values, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_14 between", value1, value2, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve14NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_14 not between", value1, value2, "solenoidValve14");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15IsNull() {
            addCriterion("Solenoid_valve_15 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15IsNotNull() {
            addCriterion("Solenoid_valve_15 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15EqualTo(Integer value) {
            addCriterion("Solenoid_valve_15 =", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_15 <>", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_15 >", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_15 >=", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15LessThan(Integer value) {
            addCriterion("Solenoid_valve_15 <", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_15 <=", value, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15In(List<Integer> values) {
            addCriterion("Solenoid_valve_15 in", values, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_15 not in", values, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_15 between", value1, value2, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve15NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_15 not between", value1, value2, "solenoidValve15");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16IsNull() {
            addCriterion("Solenoid_valve_16 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16IsNotNull() {
            addCriterion("Solenoid_valve_16 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16EqualTo(Integer value) {
            addCriterion("Solenoid_valve_16 =", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_16 <>", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_16 >", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_16 >=", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16LessThan(Integer value) {
            addCriterion("Solenoid_valve_16 <", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_16 <=", value, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16In(List<Integer> values) {
            addCriterion("Solenoid_valve_16 in", values, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_16 not in", values, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_16 between", value1, value2, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve16NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_16 not between", value1, value2, "solenoidValve16");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17IsNull() {
            addCriterion("Solenoid_valve_17 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17IsNotNull() {
            addCriterion("Solenoid_valve_17 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17EqualTo(Integer value) {
            addCriterion("Solenoid_valve_17 =", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_17 <>", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_17 >", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_17 >=", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17LessThan(Integer value) {
            addCriterion("Solenoid_valve_17 <", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_17 <=", value, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17In(List<Integer> values) {
            addCriterion("Solenoid_valve_17 in", values, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_17 not in", values, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_17 between", value1, value2, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve17NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_17 not between", value1, value2, "solenoidValve17");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18IsNull() {
            addCriterion("Solenoid_valve_18 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18IsNotNull() {
            addCriterion("Solenoid_valve_18 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18EqualTo(Integer value) {
            addCriterion("Solenoid_valve_18 =", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_18 <>", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_18 >", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_18 >=", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18LessThan(Integer value) {
            addCriterion("Solenoid_valve_18 <", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_18 <=", value, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18In(List<Integer> values) {
            addCriterion("Solenoid_valve_18 in", values, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_18 not in", values, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_18 between", value1, value2, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve18NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_18 not between", value1, value2, "solenoidValve18");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19IsNull() {
            addCriterion("Solenoid_valve_19 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19IsNotNull() {
            addCriterion("Solenoid_valve_19 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19EqualTo(Integer value) {
            addCriterion("Solenoid_valve_19 =", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_19 <>", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_19 >", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_19 >=", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19LessThan(Integer value) {
            addCriterion("Solenoid_valve_19 <", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_19 <=", value, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19In(List<Integer> values) {
            addCriterion("Solenoid_valve_19 in", values, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_19 not in", values, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_19 between", value1, value2, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve19NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_19 not between", value1, value2, "solenoidValve19");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20IsNull() {
            addCriterion("Solenoid_valve_20 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20IsNotNull() {
            addCriterion("Solenoid_valve_20 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20EqualTo(Integer value) {
            addCriterion("Solenoid_valve_20 =", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_20 <>", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_20 >", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_20 >=", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20LessThan(Integer value) {
            addCriterion("Solenoid_valve_20 <", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_20 <=", value, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20In(List<Integer> values) {
            addCriterion("Solenoid_valve_20 in", values, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_20 not in", values, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_20 between", value1, value2, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve20NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_20 not between", value1, value2, "solenoidValve20");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21IsNull() {
            addCriterion("Solenoid_valve_21 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21IsNotNull() {
            addCriterion("Solenoid_valve_21 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21EqualTo(Integer value) {
            addCriterion("Solenoid_valve_21 =", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_21 <>", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_21 >", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_21 >=", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21LessThan(Integer value) {
            addCriterion("Solenoid_valve_21 <", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_21 <=", value, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21In(List<Integer> values) {
            addCriterion("Solenoid_valve_21 in", values, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_21 not in", values, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_21 between", value1, value2, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve21NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_21 not between", value1, value2, "solenoidValve21");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22IsNull() {
            addCriterion("Solenoid_valve_22 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22IsNotNull() {
            addCriterion("Solenoid_valve_22 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22EqualTo(Integer value) {
            addCriterion("Solenoid_valve_22 =", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_22 <>", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_22 >", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_22 >=", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22LessThan(Integer value) {
            addCriterion("Solenoid_valve_22 <", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_22 <=", value, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22In(List<Integer> values) {
            addCriterion("Solenoid_valve_22 in", values, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_22 not in", values, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_22 between", value1, value2, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve22NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_22 not between", value1, value2, "solenoidValve22");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23IsNull() {
            addCriterion("Solenoid_valve_23 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23IsNotNull() {
            addCriterion("Solenoid_valve_23 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23EqualTo(Integer value) {
            addCriterion("Solenoid_valve_23 =", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_23 <>", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_23 >", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_23 >=", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23LessThan(Integer value) {
            addCriterion("Solenoid_valve_23 <", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_23 <=", value, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23In(List<Integer> values) {
            addCriterion("Solenoid_valve_23 in", values, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_23 not in", values, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_23 between", value1, value2, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve23NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_23 not between", value1, value2, "solenoidValve23");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24IsNull() {
            addCriterion("Solenoid_valve_24 is null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24IsNotNull() {
            addCriterion("Solenoid_valve_24 is not null");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24EqualTo(Integer value) {
            addCriterion("Solenoid_valve_24 =", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24NotEqualTo(Integer value) {
            addCriterion("Solenoid_valve_24 <>", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24GreaterThan(Integer value) {
            addCriterion("Solenoid_valve_24 >", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24GreaterThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_24 >=", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24LessThan(Integer value) {
            addCriterion("Solenoid_valve_24 <", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24LessThanOrEqualTo(Integer value) {
            addCriterion("Solenoid_valve_24 <=", value, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24In(List<Integer> values) {
            addCriterion("Solenoid_valve_24 in", values, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24NotIn(List<Integer> values) {
            addCriterion("Solenoid_valve_24 not in", values, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24Between(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_24 between", value1, value2, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andSolenoidValve24NotBetween(Integer value1, Integer value2) {
            addCriterion("Solenoid_valve_24 not between", value1, value2, "solenoidValve24");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusIsNull() {
            addCriterion("CTD_sensor_status is null");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusIsNotNull() {
            addCriterion("CTD_sensor_status is not null");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusEqualTo(Integer value) {
            addCriterion("CTD_sensor_status =", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusNotEqualTo(Integer value) {
            addCriterion("CTD_sensor_status <>", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusGreaterThan(Integer value) {
            addCriterion("CTD_sensor_status >", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("CTD_sensor_status >=", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusLessThan(Integer value) {
            addCriterion("CTD_sensor_status <", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusLessThanOrEqualTo(Integer value) {
            addCriterion("CTD_sensor_status <=", value, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusIn(List<Integer> values) {
            addCriterion("CTD_sensor_status in", values, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusNotIn(List<Integer> values) {
            addCriterion("CTD_sensor_status not in", values, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusBetween(Integer value1, Integer value2) {
            addCriterion("CTD_sensor_status between", value1, value2, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCtdSensorStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("CTD_sensor_status not between", value1, value2, "ctdSensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusIsNull() {
            addCriterion("CO2_sensor_status is null");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusIsNotNull() {
            addCriterion("CO2_sensor_status is not null");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusEqualTo(Integer value) {
            addCriterion("CO2_sensor_status =", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusNotEqualTo(Integer value) {
            addCriterion("CO2_sensor_status <>", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusGreaterThan(Integer value) {
            addCriterion("CO2_sensor_status >", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("CO2_sensor_status >=", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusLessThan(Integer value) {
            addCriterion("CO2_sensor_status <", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusLessThanOrEqualTo(Integer value) {
            addCriterion("CO2_sensor_status <=", value, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusIn(List<Integer> values) {
            addCriterion("CO2_sensor_status in", values, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusNotIn(List<Integer> values) {
            addCriterion("CO2_sensor_status not in", values, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusBetween(Integer value1, Integer value2) {
            addCriterion("CO2_sensor_status between", value1, value2, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCo2SensorStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("CO2_sensor_status not between", value1, value2, "co2SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusIsNull() {
            addCriterion("CH4_sensor_status is null");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusIsNotNull() {
            addCriterion("CH4_sensor_status is not null");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusEqualTo(Integer value) {
            addCriterion("CH4_sensor_status =", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusNotEqualTo(Integer value) {
            addCriterion("CH4_sensor_status <>", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusGreaterThan(Integer value) {
            addCriterion("CH4_sensor_status >", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("CH4_sensor_status >=", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusLessThan(Integer value) {
            addCriterion("CH4_sensor_status <", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusLessThanOrEqualTo(Integer value) {
            addCriterion("CH4_sensor_status <=", value, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusIn(List<Integer> values) {
            addCriterion("CH4_sensor_status in", values, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusNotIn(List<Integer> values) {
            addCriterion("CH4_sensor_status not in", values, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusBetween(Integer value1, Integer value2) {
            addCriterion("CH4_sensor_status between", value1, value2, "ch4SensorStatus");
            return (Criteria) this;
        }

        public Criteria andCh4SensorStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("CH4_sensor_status not between", value1, value2, "ch4SensorStatus");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}