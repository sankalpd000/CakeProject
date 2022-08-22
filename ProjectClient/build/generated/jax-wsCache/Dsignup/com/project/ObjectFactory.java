
package com.project;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.project package. 
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

    private final static QName _Dsigup_QNAME = new QName("http://project.com/", "dsigup");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.project
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Dsigup }
     * 
     */
    public Dsigup createDsigup() {
        return new Dsigup();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Dsigup }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://project.com/", name = "dsigup")
    public JAXBElement<Dsigup> createDsigup(Dsigup value) {
        return new JAXBElement<Dsigup>(_Dsigup_QNAME, Dsigup.class, null, value);
    }

}
