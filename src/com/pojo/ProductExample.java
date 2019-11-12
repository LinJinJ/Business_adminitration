package com.pojo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProductnameIsNull() {
            addCriterion("productName is null");
            return (Criteria) this;
        }

        public Criteria andProductnameIsNotNull() {
            addCriterion("productName is not null");
            return (Criteria) this;
        }

        public Criteria andProductnameEqualTo(String value) {
            addCriterion("productName =", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotEqualTo(String value) {
            addCriterion("productName <>", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThan(String value) {
            addCriterion("productName >", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThanOrEqualTo(String value) {
            addCriterion("productName >=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThan(String value) {
            addCriterion("productName <", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThanOrEqualTo(String value) {
            addCriterion("productName <=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLike(String value) {
            addCriterion("productName like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotLike(String value) {
            addCriterion("productName not like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameIn(List<String> values) {
            addCriterion("productName in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotIn(List<String> values) {
            addCriterion("productName not in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameBetween(String value1, String value2) {
            addCriterion("productName between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotBetween(String value1, String value2) {
            addCriterion("productName not between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductpriceIsNull() {
            addCriterion("productPrice is null");
            return (Criteria) this;
        }

        public Criteria andProductpriceIsNotNull() {
            addCriterion("productPrice is not null");
            return (Criteria) this;
        }

        public Criteria andProductpriceEqualTo(BigDecimal value) {
            addCriterion("productPrice =", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotEqualTo(BigDecimal value) {
            addCriterion("productPrice <>", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceGreaterThan(BigDecimal value) {
            addCriterion("productPrice >", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("productPrice >=", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceLessThan(BigDecimal value) {
            addCriterion("productPrice <", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("productPrice <=", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceIn(List<BigDecimal> values) {
            addCriterion("productPrice in", values, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotIn(List<BigDecimal> values) {
            addCriterion("productPrice not in", values, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("productPrice between", value1, value2, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("productPrice not between", value1, value2, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpictuerIsNull() {
            addCriterion("productPictuer is null");
            return (Criteria) this;
        }

        public Criteria andProductpictuerIsNotNull() {
            addCriterion("productPictuer is not null");
            return (Criteria) this;
        }

        public Criteria andProductpictuerEqualTo(String value) {
            addCriterion("productPictuer =", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerNotEqualTo(String value) {
            addCriterion("productPictuer <>", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerGreaterThan(String value) {
            addCriterion("productPictuer >", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerGreaterThanOrEqualTo(String value) {
            addCriterion("productPictuer >=", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerLessThan(String value) {
            addCriterion("productPictuer <", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerLessThanOrEqualTo(String value) {
            addCriterion("productPictuer <=", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerLike(String value) {
            addCriterion("productPictuer like", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerNotLike(String value) {
            addCriterion("productPictuer not like", value, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerIn(List<String> values) {
            addCriterion("productPictuer in", values, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerNotIn(List<String> values) {
            addCriterion("productPictuer not in", values, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerBetween(String value1, String value2) {
            addCriterion("productPictuer between", value1, value2, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductpictuerNotBetween(String value1, String value2) {
            addCriterion("productPictuer not between", value1, value2, "productpictuer");
            return (Criteria) this;
        }

        public Criteria andProductparameter1IsNull() {
            addCriterion("productParameter1 is null");
            return (Criteria) this;
        }

        public Criteria andProductparameter1IsNotNull() {
            addCriterion("productParameter1 is not null");
            return (Criteria) this;
        }

        public Criteria andProductparameter1EqualTo(String value) {
            addCriterion("productParameter1 =", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1NotEqualTo(String value) {
            addCriterion("productParameter1 <>", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1GreaterThan(String value) {
            addCriterion("productParameter1 >", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1GreaterThanOrEqualTo(String value) {
            addCriterion("productParameter1 >=", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1LessThan(String value) {
            addCriterion("productParameter1 <", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1LessThanOrEqualTo(String value) {
            addCriterion("productParameter1 <=", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1Like(String value) {
            addCriterion("productParameter1 like", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1NotLike(String value) {
            addCriterion("productParameter1 not like", value, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1In(List<String> values) {
            addCriterion("productParameter1 in", values, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1NotIn(List<String> values) {
            addCriterion("productParameter1 not in", values, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1Between(String value1, String value2) {
            addCriterion("productParameter1 between", value1, value2, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter1NotBetween(String value1, String value2) {
            addCriterion("productParameter1 not between", value1, value2, "productparameter1");
            return (Criteria) this;
        }

        public Criteria andProductparameter2IsNull() {
            addCriterion("productParameter2 is null");
            return (Criteria) this;
        }

        public Criteria andProductparameter2IsNotNull() {
            addCriterion("productParameter2 is not null");
            return (Criteria) this;
        }

        public Criteria andProductparameter2EqualTo(String value) {
            addCriterion("productParameter2 =", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2NotEqualTo(String value) {
            addCriterion("productParameter2 <>", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2GreaterThan(String value) {
            addCriterion("productParameter2 >", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2GreaterThanOrEqualTo(String value) {
            addCriterion("productParameter2 >=", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2LessThan(String value) {
            addCriterion("productParameter2 <", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2LessThanOrEqualTo(String value) {
            addCriterion("productParameter2 <=", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2Like(String value) {
            addCriterion("productParameter2 like", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2NotLike(String value) {
            addCriterion("productParameter2 not like", value, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2In(List<String> values) {
            addCriterion("productParameter2 in", values, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2NotIn(List<String> values) {
            addCriterion("productParameter2 not in", values, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2Between(String value1, String value2) {
            addCriterion("productParameter2 between", value1, value2, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter2NotBetween(String value1, String value2) {
            addCriterion("productParameter2 not between", value1, value2, "productparameter2");
            return (Criteria) this;
        }

        public Criteria andProductparameter3IsNull() {
            addCriterion("productParameter3 is null");
            return (Criteria) this;
        }

        public Criteria andProductparameter3IsNotNull() {
            addCriterion("productParameter3 is not null");
            return (Criteria) this;
        }

        public Criteria andProductparameter3EqualTo(String value) {
            addCriterion("productParameter3 =", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3NotEqualTo(String value) {
            addCriterion("productParameter3 <>", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3GreaterThan(String value) {
            addCriterion("productParameter3 >", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3GreaterThanOrEqualTo(String value) {
            addCriterion("productParameter3 >=", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3LessThan(String value) {
            addCriterion("productParameter3 <", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3LessThanOrEqualTo(String value) {
            addCriterion("productParameter3 <=", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3Like(String value) {
            addCriterion("productParameter3 like", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3NotLike(String value) {
            addCriterion("productParameter3 not like", value, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3In(List<String> values) {
            addCriterion("productParameter3 in", values, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3NotIn(List<String> values) {
            addCriterion("productParameter3 not in", values, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3Between(String value1, String value2) {
            addCriterion("productParameter3 between", value1, value2, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andProductparameter3NotBetween(String value1, String value2) {
            addCriterion("productParameter3 not between", value1, value2, "productparameter3");
            return (Criteria) this;
        }

        public Criteria andCategoryIsNull() {
            addCriterion("category is null");
            return (Criteria) this;
        }

        public Criteria andCategoryIsNotNull() {
            addCriterion("category is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryEqualTo(String value) {
            addCriterion("category =", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotEqualTo(String value) {
            addCriterion("category <>", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryGreaterThan(String value) {
            addCriterion("category >", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryGreaterThanOrEqualTo(String value) {
            addCriterion("category >=", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLessThan(String value) {
            addCriterion("category <", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLessThanOrEqualTo(String value) {
            addCriterion("category <=", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLike(String value) {
            addCriterion("category like", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotLike(String value) {
            addCriterion("category not like", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryIn(List<String> values) {
            addCriterion("category in", values, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotIn(List<String> values) {
            addCriterion("category not in", values, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryBetween(String value1, String value2) {
            addCriterion("category between", value1, value2, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotBetween(String value1, String value2) {
            addCriterion("category not between", value1, value2, "category");
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