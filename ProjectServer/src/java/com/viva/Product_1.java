/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.viva;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SankalpD
 */
@Entity
@Table(name = "PRODUCT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product_1.findAll", query = "SELECT p FROM Product_1 p"),
    @NamedQuery(name = "Product_1.findByPId", query = "SELECT p FROM Product_1 p WHERE p.pId = :pId"),
    @NamedQuery(name = "Product_1.findByPName", query = "SELECT p FROM Product_1 p WHERE p.pName = :pName"),
    @NamedQuery(name = "Product_1.findByPDesc", query = "SELECT p FROM Product_1 p WHERE p.pDesc = :pDesc"),
    @NamedQuery(name = "Product_1.findByPPrice", query = "SELECT p FROM Product_1 p WHERE p.pPrice = :pPrice"),
    @NamedQuery(name = "Product_1.findByPStock", query = "SELECT p FROM Product_1 p WHERE p.pStock = :pStock")})
public class Product_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 32)
    @Column(name = "P_ID")
    private String pId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "P_NAME")
    private String pName;
    @Size(max = 255)
    @Column(name = "P_DESC")
    private String pDesc;
    @Basic(optional = false)
    @NotNull
    @Column(name = "P_PRICE")
    private int pPrice;
    @Column(name = "P_STOCK")
    private Integer pStock;
    @Lob
    @Column(name = "P_IMG")
    private Serializable pImg;

    public Product_1() {
    }

    public Product_1(String pId) {
        this.pId = pId;
    }

    public Product_1(String pId, String pName, int pPrice) {
        this.pId = pId;
        this.pName = pName;
        this.pPrice = pPrice;
    }

    public String getPId() {
        return pId;
    }

    public void setPId(String pId) {
        this.pId = pId;
    }

    public String getPName() {
        return pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public String getPDesc() {
        return pDesc;
    }

    public void setPDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public int getPPrice() {
        return pPrice;
    }

    public void setPPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public Integer getPStock() {
        return pStock;
    }

    public void setPStock(Integer pStock) {
        this.pStock = pStock;
    }

    public Serializable getPImg() {
        return pImg;
    }

    public void setPImg(Serializable pImg) {
        this.pImg = pImg;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pId != null ? pId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Product_1)) {
            return false;
        }
        Product_1 other = (Product_1) object;
        if ((this.pId == null && other.pId != null) || (this.pId != null && !this.pId.equals(other.pId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.viva.Product_1[ pId=" + pId + " ]";
    }
    
}
