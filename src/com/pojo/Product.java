package com.pojo;

import java.math.BigDecimal;

import org.springframework.stereotype.Component;

@Component
public class Product {
    private Integer id;

    private String productname;

    private double productprice;

    private String productpictuer;

    private String productparameter1;

    private String productparameter2;

    private String productparameter3;

    private String category;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public double getProductprice() {
        return productprice;
    }

    public void setProductprice(double productprice2) {
        this.productprice = productprice2;
    }

    public String getProductpictuer() {
        return productpictuer;
    }

    public void setProductpictuer(String productpictuer) {
        this.productpictuer = productpictuer == null ? null : productpictuer.trim();
    }

    public String getProductparameter1() {
        return productparameter1;
    }

    public void setProductparameter1(String productparameter1) {
        this.productparameter1 = productparameter1 == null ? null : productparameter1.trim();
    }

    public String getProductparameter2() {
        return productparameter2;
    }

    public void setProductparameter2(String productparameter2) {
        this.productparameter2 = productparameter2 == null ? null : productparameter2.trim();
    }

    public String getProductparameter3() {
        return productparameter3;
    }

    public void setProductparameter3(String productparameter3) {
        this.productparameter3 = productparameter3 == null ? null : productparameter3.trim();
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }
}