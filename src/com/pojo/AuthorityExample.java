package com.pojo;

import java.util.ArrayList;
import java.util.List;

public class AuthorityExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AuthorityExample() {
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

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andMemberIsNull() {
            addCriterion("member is null");
            return (Criteria) this;
        }

        public Criteria andMemberIsNotNull() {
            addCriterion("member is not null");
            return (Criteria) this;
        }

        public Criteria andMemberEqualTo(String value) {
            addCriterion("member =", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberNotEqualTo(String value) {
            addCriterion("member <>", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberGreaterThan(String value) {
            addCriterion("member >", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberGreaterThanOrEqualTo(String value) {
            addCriterion("member >=", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberLessThan(String value) {
            addCriterion("member <", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberLessThanOrEqualTo(String value) {
            addCriterion("member <=", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberLike(String value) {
            addCriterion("member like", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberNotLike(String value) {
            addCriterion("member not like", value, "member");
            return (Criteria) this;
        }

        public Criteria andMemberIn(List<String> values) {
            addCriterion("member in", values, "member");
            return (Criteria) this;
        }

        public Criteria andMemberNotIn(List<String> values) {
            addCriterion("member not in", values, "member");
            return (Criteria) this;
        }

        public Criteria andMemberBetween(String value1, String value2) {
            addCriterion("member between", value1, value2, "member");
            return (Criteria) this;
        }

        public Criteria andMemberNotBetween(String value1, String value2) {
            addCriterion("member not between", value1, value2, "member");
            return (Criteria) this;
        }

        public Criteria andVipmemberIsNull() {
            addCriterion("VIPMember is null");
            return (Criteria) this;
        }

        public Criteria andVipmemberIsNotNull() {
            addCriterion("VIPMember is not null");
            return (Criteria) this;
        }

        public Criteria andVipmemberEqualTo(String value) {
            addCriterion("VIPMember =", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberNotEqualTo(String value) {
            addCriterion("VIPMember <>", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberGreaterThan(String value) {
            addCriterion("VIPMember >", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberGreaterThanOrEqualTo(String value) {
            addCriterion("VIPMember >=", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberLessThan(String value) {
            addCriterion("VIPMember <", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberLessThanOrEqualTo(String value) {
            addCriterion("VIPMember <=", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberLike(String value) {
            addCriterion("VIPMember like", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberNotLike(String value) {
            addCriterion("VIPMember not like", value, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberIn(List<String> values) {
            addCriterion("VIPMember in", values, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberNotIn(List<String> values) {
            addCriterion("VIPMember not in", values, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberBetween(String value1, String value2) {
            addCriterion("VIPMember between", value1, value2, "vipmember");
            return (Criteria) this;
        }

        public Criteria andVipmemberNotBetween(String value1, String value2) {
            addCriterion("VIPMember not between", value1, value2, "vipmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberIsNull() {
            addCriterion("adminMember is null");
            return (Criteria) this;
        }

        public Criteria andAdminmemberIsNotNull() {
            addCriterion("adminMember is not null");
            return (Criteria) this;
        }

        public Criteria andAdminmemberEqualTo(String value) {
            addCriterion("adminMember =", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberNotEqualTo(String value) {
            addCriterion("adminMember <>", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberGreaterThan(String value) {
            addCriterion("adminMember >", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberGreaterThanOrEqualTo(String value) {
            addCriterion("adminMember >=", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberLessThan(String value) {
            addCriterion("adminMember <", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberLessThanOrEqualTo(String value) {
            addCriterion("adminMember <=", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberLike(String value) {
            addCriterion("adminMember like", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberNotLike(String value) {
            addCriterion("adminMember not like", value, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberIn(List<String> values) {
            addCriterion("adminMember in", values, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberNotIn(List<String> values) {
            addCriterion("adminMember not in", values, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberBetween(String value1, String value2) {
            addCriterion("adminMember between", value1, value2, "adminmember");
            return (Criteria) this;
        }

        public Criteria andAdminmemberNotBetween(String value1, String value2) {
            addCriterion("adminMember not between", value1, value2, "adminmember");
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