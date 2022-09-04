
package com.viva;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "Product", targetNamespace = "http://viva.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Product {


    /**
     * 
     * @param pStock
     * @param pPrice
     * @param pName
     * @param pImg
     * @param pDesc
     * @return
     *     returns java.lang.Boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addProduct", targetNamespace = "http://viva.com/", className = "com.viva.AddProduct")
    @ResponseWrapper(localName = "addProductResponse", targetNamespace = "http://viva.com/", className = "com.viva.AddProductResponse")
    @Action(input = "http://viva.com/Product/addProductRequest", output = "http://viva.com/Product/addProductResponse")
    public Boolean addProduct(
        @WebParam(name = "p_name", targetNamespace = "")
        String pName,
        @WebParam(name = "p_desc", targetNamespace = "")
        String pDesc,
        @WebParam(name = "p_price", targetNamespace = "")
        int pPrice,
        @WebParam(name = "p_stock", targetNamespace = "")
        int pStock,
        @WebParam(name = "p_img", targetNamespace = "")
        String pImg);

}
