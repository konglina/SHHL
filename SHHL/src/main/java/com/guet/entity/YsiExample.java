package com.guet.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class YsiExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public YsiExample() {
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

        public Criteria andTIMEIsNull() {
            addCriterion("TIME is null");
            return (Criteria) this;
        }

        public Criteria andTIMEIsNotNull() {
            addCriterion("TIME is not null");
            return (Criteria) this;
        }

        public Criteria andTIMEEqualTo(Date value) {
            addCriterion("TIME =", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMENotEqualTo(Date value) {
            addCriterion("TIME <>", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMEGreaterThan(Date value) {
            addCriterion("TIME >", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMEGreaterThanOrEqualTo(Date value) {
            addCriterion("TIME >=", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMELessThan(Date value) {
            addCriterion("TIME <", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMELessThanOrEqualTo(Date value) {
            addCriterion("TIME <=", value, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMEIn(List<Date> values) {
            addCriterion("TIME in", values, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMENotIn(List<Date> values) {
            addCriterion("TIME not in", values, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMEBetween(Date value1, Date value2) {
            addCriterion("TIME between", value1, value2, "TIME");
            return (Criteria) this;
        }

        public Criteria andTIMENotBetween(Date value1, Date value2) {
            addCriterion("TIME not between", value1, value2, "TIME");
            return (Criteria) this;
        }

        public Criteria andTurbidityIsNull() {
            addCriterion("Turbidity is null");
            return (Criteria) this;
        }

        public Criteria andTurbidityIsNotNull() {
            addCriterion("Turbidity is not null");
            return (Criteria) this;
        }

        public Criteria andTurbidityEqualTo(BigDecimal value) {
            addCriterion("Turbidity =", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityNotEqualTo(BigDecimal value) {
            addCriterion("Turbidity <>", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityGreaterThan(BigDecimal value) {
            addCriterion("Turbidity >", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Turbidity >=", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityLessThan(BigDecimal value) {
            addCriterion("Turbidity <", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Turbidity <=", value, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityIn(List<BigDecimal> values) {
            addCriterion("Turbidity in", values, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityNotIn(List<BigDecimal> values) {
            addCriterion("Turbidity not in", values, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Turbidity between", value1, value2, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTurbidityNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Turbidity not between", value1, value2, "turbidity");
            return (Criteria) this;
        }

        public Criteria andTSSIsNull() {
            addCriterion("TSS is null");
            return (Criteria) this;
        }

        public Criteria andTSSIsNotNull() {
            addCriterion("TSS is not null");
            return (Criteria) this;
        }

        public Criteria andTSSEqualTo(BigDecimal value) {
            addCriterion("TSS =", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSNotEqualTo(BigDecimal value) {
            addCriterion("TSS <>", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSGreaterThan(BigDecimal value) {
            addCriterion("TSS >", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("TSS >=", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSLessThan(BigDecimal value) {
            addCriterion("TSS <", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSLessThanOrEqualTo(BigDecimal value) {
            addCriterion("TSS <=", value, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSIn(List<BigDecimal> values) {
            addCriterion("TSS in", values, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSNotIn(List<BigDecimal> values) {
            addCriterion("TSS not in", values, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("TSS between", value1, value2, "TSS");
            return (Criteria) this;
        }

        public Criteria andTSSNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("TSS not between", value1, value2, "TSS");
            return (Criteria) this;
        }

        public Criteria andChlorophyllIsNull() {
            addCriterion("Chlorophyll is null");
            return (Criteria) this;
        }

        public Criteria andChlorophyllIsNotNull() {
            addCriterion("Chlorophyll is not null");
            return (Criteria) this;
        }

        public Criteria andChlorophyllEqualTo(BigDecimal value) {
            addCriterion("Chlorophyll =", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllNotEqualTo(BigDecimal value) {
            addCriterion("Chlorophyll <>", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllGreaterThan(BigDecimal value) {
            addCriterion("Chlorophyll >", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Chlorophyll >=", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllLessThan(BigDecimal value) {
            addCriterion("Chlorophyll <", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Chlorophyll <=", value, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllIn(List<BigDecimal> values) {
            addCriterion("Chlorophyll in", values, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllNotIn(List<BigDecimal> values) {
            addCriterion("Chlorophyll not in", values, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Chlorophyll between", value1, value2, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andChlorophyllNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Chlorophyll not between", value1, value2, "chlorophyll");
            return (Criteria) this;
        }

        public Criteria andBGA_PEIsNull() {
            addCriterion("BGA_PE is null");
            return (Criteria) this;
        }

        public Criteria andBGA_PEIsNotNull() {
            addCriterion("BGA_PE is not null");
            return (Criteria) this;
        }

        public Criteria andBGA_PEEqualTo(BigDecimal value) {
            addCriterion("BGA_PE =", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PENotEqualTo(BigDecimal value) {
            addCriterion("BGA_PE <>", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PEGreaterThan(BigDecimal value) {
            addCriterion("BGA_PE >", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PEGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("BGA_PE >=", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PELessThan(BigDecimal value) {
            addCriterion("BGA_PE <", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PELessThanOrEqualTo(BigDecimal value) {
            addCriterion("BGA_PE <=", value, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PEIn(List<BigDecimal> values) {
            addCriterion("BGA_PE in", values, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PENotIn(List<BigDecimal> values) {
            addCriterion("BGA_PE not in", values, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PEBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("BGA_PE between", value1, value2, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andBGA_PENotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("BGA_PE not between", value1, value2, "BGA_PE");
            return (Criteria) this;
        }

        public Criteria andODOIsNull() {
            addCriterion("ODO is null");
            return (Criteria) this;
        }

        public Criteria andODOIsNotNull() {
            addCriterion("ODO is not null");
            return (Criteria) this;
        }

        public Criteria andODOEqualTo(BigDecimal value) {
            addCriterion("ODO =", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODONotEqualTo(BigDecimal value) {
            addCriterion("ODO <>", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOGreaterThan(BigDecimal value) {
            addCriterion("ODO >", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ODO >=", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOLessThan(BigDecimal value) {
            addCriterion("ODO <", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ODO <=", value, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOIn(List<BigDecimal> values) {
            addCriterion("ODO in", values, "ODO");
            return (Criteria) this;
        }

        public Criteria andODONotIn(List<BigDecimal> values) {
            addCriterion("ODO not in", values, "ODO");
            return (Criteria) this;
        }

        public Criteria andODOBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODO between", value1, value2, "ODO");
            return (Criteria) this;
        }

        public Criteria andODONotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODO not between", value1, value2, "ODO");
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

        public Criteria andSpecific_ConductanceIsNull() {
            addCriterion("Specific_Conductance is null");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceIsNotNull() {
            addCriterion("Specific_Conductance is not null");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceEqualTo(BigDecimal value) {
            addCriterion("Specific_Conductance =", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceNotEqualTo(BigDecimal value) {
            addCriterion("Specific_Conductance <>", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceGreaterThan(BigDecimal value) {
            addCriterion("Specific_Conductance >", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Specific_Conductance >=", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceLessThan(BigDecimal value) {
            addCriterion("Specific_Conductance <", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Specific_Conductance <=", value, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceIn(List<BigDecimal> values) {
            addCriterion("Specific_Conductance in", values, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceNotIn(List<BigDecimal> values) {
            addCriterion("Specific_Conductance not in", values, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Specific_Conductance between", value1, value2, "specific_Conductance");
            return (Criteria) this;
        }

        public Criteria andSpecific_ConductanceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Specific_Conductance not between", value1, value2, "specific_Conductance");
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

        public Criteria andPHIsNull() {
            addCriterion("pH is null");
            return (Criteria) this;
        }

        public Criteria andPHIsNotNull() {
            addCriterion("pH is not null");
            return (Criteria) this;
        }

        public Criteria andPHEqualTo(BigDecimal value) {
            addCriterion("pH =", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHNotEqualTo(BigDecimal value) {
            addCriterion("pH <>", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHGreaterThan(BigDecimal value) {
            addCriterion("pH >", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("pH >=", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHLessThan(BigDecimal value) {
            addCriterion("pH <", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHLessThanOrEqualTo(BigDecimal value) {
            addCriterion("pH <=", value, "pH");
            return (Criteria) this;
        }

        public Criteria andPHIn(List<BigDecimal> values) {
            addCriterion("pH in", values, "pH");
            return (Criteria) this;
        }

        public Criteria andPHNotIn(List<BigDecimal> values) {
            addCriterion("pH not in", values, "pH");
            return (Criteria) this;
        }

        public Criteria andPHBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pH between", value1, value2, "pH");
            return (Criteria) this;
        }

        public Criteria andPHNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pH not between", value1, value2, "pH");
            return (Criteria) this;
        }

        public Criteria andORPIsNull() {
            addCriterion("ORP is null");
            return (Criteria) this;
        }

        public Criteria andORPIsNotNull() {
            addCriterion("ORP is not null");
            return (Criteria) this;
        }

        public Criteria andORPEqualTo(BigDecimal value) {
            addCriterion("ORP =", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPNotEqualTo(BigDecimal value) {
            addCriterion("ORP <>", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPGreaterThan(BigDecimal value) {
            addCriterion("ORP >", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ORP >=", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPLessThan(BigDecimal value) {
            addCriterion("ORP <", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ORP <=", value, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPIn(List<BigDecimal> values) {
            addCriterion("ORP in", values, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPNotIn(List<BigDecimal> values) {
            addCriterion("ORP not in", values, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ORP between", value1, value2, "ORP");
            return (Criteria) this;
        }

        public Criteria andORPNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ORP not between", value1, value2, "ORP");
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

        public Criteria andDepthIsNull() {
            addCriterion("Depth is null");
            return (Criteria) this;
        }

        public Criteria andDepthIsNotNull() {
            addCriterion("Depth is not null");
            return (Criteria) this;
        }

        public Criteria andDepthEqualTo(BigDecimal value) {
            addCriterion("Depth =", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotEqualTo(BigDecimal value) {
            addCriterion("Depth <>", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthGreaterThan(BigDecimal value) {
            addCriterion("Depth >", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Depth >=", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthLessThan(BigDecimal value) {
            addCriterion("Depth <", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Depth <=", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthIn(List<BigDecimal> values) {
            addCriterion("Depth in", values, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotIn(List<BigDecimal> values) {
            addCriterion("Depth not in", values, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Depth between", value1, value2, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Depth not between", value1, value2, "depth");
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