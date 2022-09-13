
package com.viva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for AddPro complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AddPro"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="pName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="pDesc" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="pPrice" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="pStock" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="pImg" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AddPro", propOrder = {
    "pName",
    "pDesc",
    "pPrice",
    "pStock",
    "pImg"
})
public class AddPro {

    protected String pName;
    protected String pDesc;
    protected int pPrice;
    protected int pStock;
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
