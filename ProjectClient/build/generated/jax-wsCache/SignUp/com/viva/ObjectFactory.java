
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

    private final static QName _SignCust_QNAME = new QName("http://viva.com/", "signCust");
    private final static QName _SignCustResponse_QNAME = new QName("http://viva.com/", "signCustResponse");
    private final static QName _SignDguy_QNAME = new QName("http://viva.com/", "signDguy");
    private final static QName _SignDguyResponse_QNAME = new QName("http://viva.com/", "signDguyResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.viva
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SignCust }
     * 
     */
    public SignCust createSignCust() {
        return new SignCust();
    }

    /**
     * Create an instance of {@link SignCustResponse }
     * 
     */
    public SignCustResponse createSignCustResponse() {
        return new SignCustResponse();
    }

    /**
     * Create an instance of {@link SignDguy }
     * 
     */
    public SignDguy createSignDguy() {
        return new SignDguy();
    }

    /**
     * Create an instance of {@link SignDguyResponse }
     * 
     */
    public SignDguyResponse createSignDguyResponse() {
        return new SignDguyResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SignCust }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "signCust")
    public JAXBElement<SignCust> createSignCust(SignCust value) {
        return new JAXBElement<SignCust>(_SignCust_QNAME, SignCust.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SignCustResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "signCustResponse")
    public JAXBElement<SignCustResponse> createSignCustResponse(SignCustResponse value) {
        return new JAXBElement<SignCustResponse>(_SignCustResponse_QNAME, SignCustResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SignDguy }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "signDguy")
    public JAXBElement<SignDguy> createSignDguy(SignDguy value) {
        return new JAXBElement<SignDguy>(_SignDguy_QNAME, SignDguy.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SignDguyResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "signDguyResponse")
    public JAXBElement<SignDguyResponse> createSignDguyResponse(SignDguyResponse value) {
        return new JAXBElement<SignDguyResponse>(_SignDguyResponse_QNAME, SignDguyResponse.class, null, value);
    }

}
