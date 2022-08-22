
package com.project;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for dsigup complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="dsigup"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="duname" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="dname" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="dphn" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="dmail" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="dpass" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "dsigup", propOrder = {
    "duname",
    "dname",
    "dphn",
    "dmail",
    "dpass"
})
public class Dsigup {

    protected String duname;
    protected String dname;
    protected int dphn;
    protected String dmail;
    protected String dpass;

    /**
     * Gets the value of the duname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDuname() {
        return duname;
    }

    /**
     * Sets the value of the duname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDuname(String value) {
        this.duname = value;
    }

    /**
     * Gets the value of the dname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDname() {
        return dname;
    }

    /**
     * Sets the value of the dname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDname(String value) {
        this.dname = value;
    }

    /**
     * Gets the value of the dphn property.
     * 
     */
    public int getDphn() {
        return dphn;
    }

    /**
     * Sets the value of the dphn property.
     * 
     */
    public void setDphn(int value) {
        this.dphn = value;
    }

    /**
     * Gets the value of the dmail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDmail() {
        return dmail;
    }

    /**
     * Sets the value of the dmail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDmail(String value) {
        this.dmail = value;
    }

    /**
     * Gets the value of the dpass property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDpass() {
        return dpass;
    }

    /**
     * Sets the value of the dpass property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDpass(String value) {
        this.dpass = value;
    }

}
