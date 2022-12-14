
package com.viva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for signCust complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="signCust"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="c_uname" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="c_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="c_add" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="c_phn" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="c_mail" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
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
@XmlType(name = "signCust", propOrder = {
    "cUname",
    "cName",
    "cAdd",
    "cPhn",
    "cMail",
    "cPass"
})
public class SignCust {

    @XmlElement(name = "c_uname")
    protected String cUname;
    @XmlElement(name = "c_name")
    protected String cName;
    @XmlElement(name = "c_add")
    protected String cAdd;
    @XmlElement(name = "c_phn")
    protected String cPhn;
    @XmlElement(name = "c_mail")
    protected String cMail;
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
     * Gets the value of the cName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCName() {
        return cName;
    }

    /**
     * Sets the value of the cName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCName(String value) {
        this.cName = value;
    }

    /**
     * Gets the value of the cAdd property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCAdd() {
        return cAdd;
    }

    /**
     * Sets the value of the cAdd property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCAdd(String value) {
        this.cAdd = value;
    }

    /**
     * Gets the value of the cPhn property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCPhn() {
        return cPhn;
    }

    /**
     * Sets the value of the cPhn property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCPhn(String value) {
        this.cPhn = value;
    }

    /**
     * Gets the value of the cMail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCMail() {
        return cMail;
    }

    /**
     * Sets the value of the cMail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCMail(String value) {
        this.cMail = value;
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
