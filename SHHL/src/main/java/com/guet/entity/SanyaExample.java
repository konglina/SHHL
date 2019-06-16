package com.guet.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SanyaExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SanyaExample() {
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

        public Criteria andInvoltageIsNull() {
            addCriterion("InVoltage is null");
            return (Criteria) this;
        }

        public Criteria andInvoltageIsNotNull() {
            addCriterion("InVoltage is not null");
            return (Criteria) this;
        }

        public Criteria andInvoltageEqualTo(BigDecimal value) {
            addCriterion("InVoltage =", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageNotEqualTo(BigDecimal value) {
            addCriterion("InVoltage <>", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageGreaterThan(BigDecimal value) {
            addCriterion("InVoltage >", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("InVoltage >=", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageLessThan(BigDecimal value) {
            addCriterion("InVoltage <", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageLessThanOrEqualTo(BigDecimal value) {
            addCriterion("InVoltage <=", value, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageIn(List<BigDecimal> values) {
            addCriterion("InVoltage in", values, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageNotIn(List<BigDecimal> values) {
            addCriterion("InVoltage not in", values, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("InVoltage between", value1, value2, "involtage");
            return (Criteria) this;
        }

        public Criteria andInvoltageNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("InVoltage not between", value1, value2, "involtage");
            return (Criteria) this;
        }

        public Criteria andIncurrentIsNull() {
            addCriterion("InCurrent is null");
            return (Criteria) this;
        }

        public Criteria andIncurrentIsNotNull() {
            addCriterion("InCurrent is not null");
            return (Criteria) this;
        }

        public Criteria andIncurrentEqualTo(BigDecimal value) {
            addCriterion("InCurrent =", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentNotEqualTo(BigDecimal value) {
            addCriterion("InCurrent <>", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentGreaterThan(BigDecimal value) {
            addCriterion("InCurrent >", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("InCurrent >=", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentLessThan(BigDecimal value) {
            addCriterion("InCurrent <", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentLessThanOrEqualTo(BigDecimal value) {
            addCriterion("InCurrent <=", value, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentIn(List<BigDecimal> values) {
            addCriterion("InCurrent in", values, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentNotIn(List<BigDecimal> values) {
            addCriterion("InCurrent not in", values, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("InCurrent between", value1, value2, "incurrent");
            return (Criteria) this;
        }

        public Criteria andIncurrentNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("InCurrent not between", value1, value2, "incurrent");
            return (Criteria) this;
        }

        public Criteria andHumidityIsNull() {
            addCriterion("Humidity is null");
            return (Criteria) this;
        }

        public Criteria andHumidityIsNotNull() {
            addCriterion("Humidity is not null");
            return (Criteria) this;
        }

        public Criteria andHumidityEqualTo(BigDecimal value) {
            addCriterion("Humidity =", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityNotEqualTo(BigDecimal value) {
            addCriterion("Humidity <>", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityGreaterThan(BigDecimal value) {
            addCriterion("Humidity >", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Humidity >=", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityLessThan(BigDecimal value) {
            addCriterion("Humidity <", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Humidity <=", value, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityIn(List<BigDecimal> values) {
            addCriterion("Humidity in", values, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityNotIn(List<BigDecimal> values) {
            addCriterion("Humidity not in", values, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Humidity between", value1, value2, "humidity");
            return (Criteria) this;
        }

        public Criteria andHumidityNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Humidity not between", value1, value2, "humidity");
            return (Criteria) this;
        }

        public Criteria andLeakageIsNull() {
            addCriterion("Leakage is null");
            return (Criteria) this;
        }

        public Criteria andLeakageIsNotNull() {
            addCriterion("Leakage is not null");
            return (Criteria) this;
        }

        public Criteria andLeakageEqualTo(BigDecimal value) {
            addCriterion("Leakage =", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageNotEqualTo(BigDecimal value) {
            addCriterion("Leakage <>", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageGreaterThan(BigDecimal value) {
            addCriterion("Leakage >", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Leakage >=", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageLessThan(BigDecimal value) {
            addCriterion("Leakage <", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageLessThanOrEqualTo(BigDecimal value) {
            addCriterion("Leakage <=", value, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageIn(List<BigDecimal> values) {
            addCriterion("Leakage in", values, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageNotIn(List<BigDecimal> values) {
            addCriterion("Leakage not in", values, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Leakage between", value1, value2, "leakage");
            return (Criteria) this;
        }

        public Criteria andLeakageNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Leakage not between", value1, value2, "leakage");
            return (Criteria) this;
        }

        public Criteria andTemperature1IsNull() {
            addCriterion("Temperature1 is null");
            return (Criteria) this;
        }

        public Criteria andTemperature1IsNotNull() {
            addCriterion("Temperature1 is not null");
            return (Criteria) this;
        }

        public Criteria andTemperature1EqualTo(BigDecimal value) {
            addCriterion("Temperature1 =", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1NotEqualTo(BigDecimal value) {
            addCriterion("Temperature1 <>", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1GreaterThan(BigDecimal value) {
            addCriterion("Temperature1 >", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature1 >=", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1LessThan(BigDecimal value) {
            addCriterion("Temperature1 <", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature1 <=", value, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1In(List<BigDecimal> values) {
            addCriterion("Temperature1 in", values, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1NotIn(List<BigDecimal> values) {
            addCriterion("Temperature1 not in", values, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature1 between", value1, value2, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature1NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature1 not between", value1, value2, "temperature1");
            return (Criteria) this;
        }

        public Criteria andTemperature2IsNull() {
            addCriterion("Temperature2 is null");
            return (Criteria) this;
        }

        public Criteria andTemperature2IsNotNull() {
            addCriterion("Temperature2 is not null");
            return (Criteria) this;
        }

        public Criteria andTemperature2EqualTo(BigDecimal value) {
            addCriterion("Temperature2 =", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2NotEqualTo(BigDecimal value) {
            addCriterion("Temperature2 <>", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2GreaterThan(BigDecimal value) {
            addCriterion("Temperature2 >", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature2 >=", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2LessThan(BigDecimal value) {
            addCriterion("Temperature2 <", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature2 <=", value, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2In(List<BigDecimal> values) {
            addCriterion("Temperature2 in", values, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2NotIn(List<BigDecimal> values) {
            addCriterion("Temperature2 not in", values, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature2 between", value1, value2, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature2NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature2 not between", value1, value2, "temperature2");
            return (Criteria) this;
        }

        public Criteria andTemperature3IsNull() {
            addCriterion("Temperature3 is null");
            return (Criteria) this;
        }

        public Criteria andTemperature3IsNotNull() {
            addCriterion("Temperature3 is not null");
            return (Criteria) this;
        }

        public Criteria andTemperature3EqualTo(BigDecimal value) {
            addCriterion("Temperature3 =", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3NotEqualTo(BigDecimal value) {
            addCriterion("Temperature3 <>", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3GreaterThan(BigDecimal value) {
            addCriterion("Temperature3 >", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature3 >=", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3LessThan(BigDecimal value) {
            addCriterion("Temperature3 <", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature3 <=", value, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3In(List<BigDecimal> values) {
            addCriterion("Temperature3 in", values, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3NotIn(List<BigDecimal> values) {
            addCriterion("Temperature3 not in", values, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature3 between", value1, value2, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature3NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature3 not between", value1, value2, "temperature3");
            return (Criteria) this;
        }

        public Criteria andTemperature4IsNull() {
            addCriterion("Temperature4 is null");
            return (Criteria) this;
        }

        public Criteria andTemperature4IsNotNull() {
            addCriterion("Temperature4 is not null");
            return (Criteria) this;
        }

        public Criteria andTemperature4EqualTo(BigDecimal value) {
            addCriterion("Temperature4 =", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4NotEqualTo(BigDecimal value) {
            addCriterion("Temperature4 <>", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4GreaterThan(BigDecimal value) {
            addCriterion("Temperature4 >", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature4 >=", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4LessThan(BigDecimal value) {
            addCriterion("Temperature4 <", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4LessThanOrEqualTo(BigDecimal value) {
            addCriterion("Temperature4 <=", value, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4In(List<BigDecimal> values) {
            addCriterion("Temperature4 in", values, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4NotIn(List<BigDecimal> values) {
            addCriterion("Temperature4 not in", values, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature4 between", value1, value2, "temperature4");
            return (Criteria) this;
        }

        public Criteria andTemperature4NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("Temperature4 not between", value1, value2, "temperature4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1IsNull() {
            addCriterion("OutVoltage1 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1IsNotNull() {
            addCriterion("OutVoltage1 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1EqualTo(BigDecimal value) {
            addCriterion("OutVoltage1 =", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage1 <>", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage1 >", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage1 >=", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1LessThan(BigDecimal value) {
            addCriterion("OutVoltage1 <", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage1 <=", value, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1In(List<BigDecimal> values) {
            addCriterion("OutVoltage1 in", values, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage1 not in", values, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage1 between", value1, value2, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage1NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage1 not between", value1, value2, "outvoltage1");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2IsNull() {
            addCriterion("OutVoltage2 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2IsNotNull() {
            addCriterion("OutVoltage2 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2EqualTo(BigDecimal value) {
            addCriterion("OutVoltage2 =", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage2 <>", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage2 >", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage2 >=", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2LessThan(BigDecimal value) {
            addCriterion("OutVoltage2 <", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage2 <=", value, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2In(List<BigDecimal> values) {
            addCriterion("OutVoltage2 in", values, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage2 not in", values, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage2 between", value1, value2, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage2NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage2 not between", value1, value2, "outvoltage2");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3IsNull() {
            addCriterion("OutVoltage3 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3IsNotNull() {
            addCriterion("OutVoltage3 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3EqualTo(BigDecimal value) {
            addCriterion("OutVoltage3 =", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage3 <>", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage3 >", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage3 >=", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3LessThan(BigDecimal value) {
            addCriterion("OutVoltage3 <", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage3 <=", value, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3In(List<BigDecimal> values) {
            addCriterion("OutVoltage3 in", values, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage3 not in", values, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage3 between", value1, value2, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage3NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage3 not between", value1, value2, "outvoltage3");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4IsNull() {
            addCriterion("OutVoltage4 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4IsNotNull() {
            addCriterion("OutVoltage4 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4EqualTo(BigDecimal value) {
            addCriterion("OutVoltage4 =", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage4 <>", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage4 >", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage4 >=", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4LessThan(BigDecimal value) {
            addCriterion("OutVoltage4 <", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage4 <=", value, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4In(List<BigDecimal> values) {
            addCriterion("OutVoltage4 in", values, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage4 not in", values, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage4 between", value1, value2, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage4NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage4 not between", value1, value2, "outvoltage4");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5IsNull() {
            addCriterion("OutVoltage5 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5IsNotNull() {
            addCriterion("OutVoltage5 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5EqualTo(BigDecimal value) {
            addCriterion("OutVoltage5 =", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage5 <>", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage5 >", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage5 >=", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5LessThan(BigDecimal value) {
            addCriterion("OutVoltage5 <", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage5 <=", value, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5In(List<BigDecimal> values) {
            addCriterion("OutVoltage5 in", values, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage5 not in", values, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage5 between", value1, value2, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage5NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage5 not between", value1, value2, "outvoltage5");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6IsNull() {
            addCriterion("OutVoltage6 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6IsNotNull() {
            addCriterion("OutVoltage6 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6EqualTo(BigDecimal value) {
            addCriterion("OutVoltage6 =", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage6 <>", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage6 >", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage6 >=", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6LessThan(BigDecimal value) {
            addCriterion("OutVoltage6 <", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage6 <=", value, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6In(List<BigDecimal> values) {
            addCriterion("OutVoltage6 in", values, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage6 not in", values, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage6 between", value1, value2, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage6NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage6 not between", value1, value2, "outvoltage6");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7IsNull() {
            addCriterion("OutVoltage7 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7IsNotNull() {
            addCriterion("OutVoltage7 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7EqualTo(BigDecimal value) {
            addCriterion("OutVoltage7 =", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage7 <>", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage7 >", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage7 >=", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7LessThan(BigDecimal value) {
            addCriterion("OutVoltage7 <", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage7 <=", value, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7In(List<BigDecimal> values) {
            addCriterion("OutVoltage7 in", values, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage7 not in", values, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage7 between", value1, value2, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage7NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage7 not between", value1, value2, "outvoltage7");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8IsNull() {
            addCriterion("OutVoltage8 is null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8IsNotNull() {
            addCriterion("OutVoltage8 is not null");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8EqualTo(BigDecimal value) {
            addCriterion("OutVoltage8 =", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8NotEqualTo(BigDecimal value) {
            addCriterion("OutVoltage8 <>", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8GreaterThan(BigDecimal value) {
            addCriterion("OutVoltage8 >", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage8 >=", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8LessThan(BigDecimal value) {
            addCriterion("OutVoltage8 <", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutVoltage8 <=", value, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8In(List<BigDecimal> values) {
            addCriterion("OutVoltage8 in", values, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8NotIn(List<BigDecimal> values) {
            addCriterion("OutVoltage8 not in", values, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage8 between", value1, value2, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutvoltage8NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutVoltage8 not between", value1, value2, "outvoltage8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1IsNull() {
            addCriterion("OutCurrent1 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1IsNotNull() {
            addCriterion("OutCurrent1 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1EqualTo(BigDecimal value) {
            addCriterion("OutCurrent1 =", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent1 <>", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent1 >", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent1 >=", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1LessThan(BigDecimal value) {
            addCriterion("OutCurrent1 <", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent1 <=", value, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1In(List<BigDecimal> values) {
            addCriterion("OutCurrent1 in", values, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent1 not in", values, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent1 between", value1, value2, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent1NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent1 not between", value1, value2, "outcurrent1");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2IsNull() {
            addCriterion("OutCurrent2 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2IsNotNull() {
            addCriterion("OutCurrent2 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2EqualTo(BigDecimal value) {
            addCriterion("OutCurrent2 =", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent2 <>", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent2 >", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent2 >=", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2LessThan(BigDecimal value) {
            addCriterion("OutCurrent2 <", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent2 <=", value, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2In(List<BigDecimal> values) {
            addCriterion("OutCurrent2 in", values, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent2 not in", values, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent2 between", value1, value2, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent2NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent2 not between", value1, value2, "outcurrent2");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3IsNull() {
            addCriterion("OutCurrent3 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3IsNotNull() {
            addCriterion("OutCurrent3 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3EqualTo(BigDecimal value) {
            addCriterion("OutCurrent3 =", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent3 <>", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent3 >", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent3 >=", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3LessThan(BigDecimal value) {
            addCriterion("OutCurrent3 <", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent3 <=", value, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3In(List<BigDecimal> values) {
            addCriterion("OutCurrent3 in", values, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent3 not in", values, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent3 between", value1, value2, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent3NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent3 not between", value1, value2, "outcurrent3");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4IsNull() {
            addCriterion("OutCurrent4 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4IsNotNull() {
            addCriterion("OutCurrent4 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4EqualTo(BigDecimal value) {
            addCriterion("OutCurrent4 =", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent4 <>", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent4 >", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent4 >=", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4LessThan(BigDecimal value) {
            addCriterion("OutCurrent4 <", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent4 <=", value, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4In(List<BigDecimal> values) {
            addCriterion("OutCurrent4 in", values, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent4 not in", values, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent4 between", value1, value2, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent4NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent4 not between", value1, value2, "outcurrent4");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5IsNull() {
            addCriterion("OutCurrent5 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5IsNotNull() {
            addCriterion("OutCurrent5 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5EqualTo(BigDecimal value) {
            addCriterion("OutCurrent5 =", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent5 <>", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent5 >", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent5 >=", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5LessThan(BigDecimal value) {
            addCriterion("OutCurrent5 <", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent5 <=", value, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5In(List<BigDecimal> values) {
            addCriterion("OutCurrent5 in", values, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent5 not in", values, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent5 between", value1, value2, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent5NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent5 not between", value1, value2, "outcurrent5");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6IsNull() {
            addCriterion("OutCurrent6 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6IsNotNull() {
            addCriterion("OutCurrent6 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6EqualTo(BigDecimal value) {
            addCriterion("OutCurrent6 =", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent6 <>", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent6 >", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent6 >=", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6LessThan(BigDecimal value) {
            addCriterion("OutCurrent6 <", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent6 <=", value, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6In(List<BigDecimal> values) {
            addCriterion("OutCurrent6 in", values, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent6 not in", values, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent6 between", value1, value2, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent6NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent6 not between", value1, value2, "outcurrent6");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7IsNull() {
            addCriterion("OutCurrent7 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7IsNotNull() {
            addCriterion("OutCurrent7 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7EqualTo(BigDecimal value) {
            addCriterion("OutCurrent7 =", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent7 <>", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent7 >", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent7 >=", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7LessThan(BigDecimal value) {
            addCriterion("OutCurrent7 <", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent7 <=", value, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7In(List<BigDecimal> values) {
            addCriterion("OutCurrent7 in", values, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent7 not in", values, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent7 between", value1, value2, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent7NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent7 not between", value1, value2, "outcurrent7");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8IsNull() {
            addCriterion("OutCurrent8 is null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8IsNotNull() {
            addCriterion("OutCurrent8 is not null");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8EqualTo(BigDecimal value) {
            addCriterion("OutCurrent8 =", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8NotEqualTo(BigDecimal value) {
            addCriterion("OutCurrent8 <>", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8GreaterThan(BigDecimal value) {
            addCriterion("OutCurrent8 >", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8GreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent8 >=", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8LessThan(BigDecimal value) {
            addCriterion("OutCurrent8 <", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8LessThanOrEqualTo(BigDecimal value) {
            addCriterion("OutCurrent8 <=", value, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8In(List<BigDecimal> values) {
            addCriterion("OutCurrent8 in", values, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8NotIn(List<BigDecimal> values) {
            addCriterion("OutCurrent8 not in", values, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8Between(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent8 between", value1, value2, "outcurrent8");
            return (Criteria) this;
        }

        public Criteria andOutcurrent8NotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("OutCurrent8 not between", value1, value2, "outcurrent8");
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