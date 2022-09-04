
package com.viva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for addProduct complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="addProduct"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="p_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="p_desc" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="p_price" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="p_stock" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="p_img" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "addProduct", propOrder = {
    "pName",
    "pDesc",
    "pPrice",
    "pStock",
    "pImg"
})
public class AddProduct {

    @XmlElement(name = "p_name")
    protected String pName;
    @XmlElement(name = "p_desc")
    protected String pDesc;
    @XmlElement(name = "p_price")
    protected int pPrice;
    @XmlElement(name = "p_stock")
    protected int pStock;
    @XmlElement(name = "p_img")
    protected String pImg;

    /**
     * Gets the value of the pName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPName() {
        return pName;
    }

    /**
     * Sets the value of the pName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPName(String value) {
        this.pName = value;
    }

    /**
     * Gets the value of the pDesc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPDesc() {
        return pDesc;
    }

    /**
     * Sets the value of the pDesc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPDesc(String value) {
        this.pDesc = value;
    }

    /**
     * Gets the value of the pPrice property.
     * 
     */
    public int getPPrice() {
        return pPrice;
    }

    /**
     * Sets the value of the pPrice property.
     * 
     */
    public void setPPrice(int value) {
        this.pPrice = value;
    }

    /**
     * Gets the value of the pStock property.
     * 
     */
    public int getPStock() {
        return pStock;
    }

    /**
     * Sets the value of the pStock property.
     * 
     */
    public void setPStock(int value) {
        this.pStock = value;
    }

    /**
     * Gets the value of the pImg property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPImg() {
        return pImg;
    }

    /**
     * Sets the value of the pImg property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPImg(String value) {
        this.pImg = value;
    }

}
