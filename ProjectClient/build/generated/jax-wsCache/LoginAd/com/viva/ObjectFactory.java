
package com.viva;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.viva package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Login_QNAME = new QName("http://viva.com/", "login");
    private final static QName _LoginCust_QNAME = new QName("http://viva.com/", "loginCust");
    private final static QName _LoginCustResponse_QNAME = new QName("http://viva.com/", "loginCustResponse");
    private final static QName _LoginDguy_QNAME = new QName("http://viva.com/", "loginDguy");
    private final static QName _LoginDguyResponse_QNAME = new QName("http://viva.com/", "loginDguyResponse");
    private final static QName _LoginResponse_QNAME = new QName("http://viva.com/", "loginResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.viva
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link LoginCust }
     * 
     */
    public LoginCust createLoginCust() {
        return new LoginCust();
    }

    /**
     * Create an instance of {@link LoginCustResponse }
     * 
     */
    public LoginCustResponse createLoginCustResponse() {
        return new LoginCustResponse();
    }

    /**
     * Create an instance of {@link LoginDguy }
     * 
     */
    public LoginDguy createLoginDguy() {
        return new LoginDguy();
    }

    /**
     * Create an instance of {@link LoginDguyResponse }
     * 
     */
    public LoginDguyResponse createLoginDguyResponse() {
        return new LoginDguyResponse();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Login }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "login")
    public JAXBElement<Login> createLogin(Login value) {
        return new JAXBElement<Login>(_Login_QNAME, Login.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginCust }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "loginCust")
    public JAXBElement<LoginCust> createLoginCust(LoginCust value) {
        return new JAXBElement<LoginCust>(_LoginCust_QNAME, LoginCust.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginCustResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "loginCustResponse")
    public JAXBElement<LoginCustResponse> createLoginCustResponse(LoginCustResponse value) {
        return new JAXBElement<LoginCustResponse>(_LoginCustResponse_QNAME, LoginCustResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginDguy }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "loginDguy")
    public JAXBElement<LoginDguy> createLoginDguy(LoginDguy value) {
        return new JAXBElement<LoginDguy>(_LoginDguy_QNAME, LoginDguy.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginDguyResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "loginDguyResponse")
    public JAXBElement<LoginDguyResponse> createLoginDguyResponse(LoginDguyResponse value) {
        return new JAXBElement<LoginDguyResponse>(_LoginDguyResponse_QNAME, LoginDguyResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "loginResponse")
    public JAXBElement<LoginResponse> createLoginResponse(LoginResponse value) {
        return new JAXBElement<LoginResponse>(_LoginResponse_QNAME, LoginResponse.class, null, value);
    }

}
