
package com.viva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for loginCust complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="loginCust"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="c_uname" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="c_pass" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "loginCust", propOrder = {
    "cUname",
    "cPass"
})
public class LoginCust {

    @XmlElement(name = "c_uname")
    protected String cUname;
    @XmlElement(name = "c_pass")
    protected String cPass;

    /**
     * Gets the value of the cUname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCUname() {
        return cUname;
    }

    /**
     * Sets the value of the cUname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCUname(String value) {
        this.cUname = value;
    }

    /**
     * Gets the value of the cPass property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCPass() {
        return cPass;
    }

    /**
     * Sets the value of the cPass property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCPass(String value) {
        this.cPass = value;
    }

}
