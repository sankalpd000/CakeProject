
package com.viva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for signDguy complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="signDguy"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="d_uname" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="d_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="d_phn" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="d_mail" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="d_pass" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "signDguy", propOrder = {
    "dUname",
    "dName",
    "dPhn",
    "dMail",
    "dPass"
})
public class SignDguy {

    @XmlElement(name = "d_uname")
    protected String dUname;
    @XmlElement(name = "d_name")
    protected String dName;
    @XmlElement(name = "d_phn")
    protected String dPhn;
    @XmlElement(name = "d_mail")
    protected String dMail;
    @XmlElement(name = "d_pass")
    protected String dPass;

    /**
     * Gets the value of the dUname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDUname() {
        return dUname;
    }

    /**
     * Sets the value of the dUname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDUname(String value) {
        this.dUname = value;
    }

    /**
     * Gets the value of the dName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDName() {
        return dName;
    }

    /**
     * Sets the value of the dName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDName(String value) {
        this.dName = value;
    }

    /**
     * Gets the value of the dPhn property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDPhn() {
        return dPhn;
    }

    /**
     * Sets the value of the dPhn property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDPhn(String value) {
        this.dPhn = value;
    }

    /**
     * Gets the value of the dMail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDMail() {
        return dMail;
    }

    /**
     * Sets the value of the dMail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDMail(String value) {
        this.dMail = value;
    }

    /**
     * Gets the value of the dPass property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDPass() {
        return dPass;
    }

    /**
     * Sets the value of the dPass property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDPass(String value) {
        this.dPass = value;
    }

}
