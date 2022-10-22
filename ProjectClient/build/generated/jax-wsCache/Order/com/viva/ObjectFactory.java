
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

    private final static QName _Order_QNAME = new QName("http://viva.com/", "Order");
    private final static QName _OrderResponse_QNAME = new QName("http://viva.com/", "OrderResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.viva
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Order_Type }
     * 
     */
    public Order_Type createOrder_Type() {
        return new Order_Type();
    }

    /**
     * Create an instance of {@link OrderResponse }
     * 
     */
    public OrderResponse createOrderResponse() {
        return new OrderResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Order_Type }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "Order")
    public JAXBElement<Order_Type> createOrder(Order_Type value) {
        return new JAXBElement<Order_Type>(_Order_QNAME, Order_Type.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link OrderResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://viva.com/", name = "OrderResponse")
    public JAXBElement<OrderResponse> createOrderResponse(OrderResponse value) {
        return new JAXBElement<OrderResponse>(_OrderResponse_QNAME, OrderResponse.class, null, value);
    }

}
