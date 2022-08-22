
package com.project;

import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "CustSignUp", targetNamespace = "http://project.com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface CustSignUp {


    /**
     * 
     * @param cAddress
     * @param cName
     * @param cUname
     * @param cPass
     * @param cPhn
     * @param cMail
     */
    @WebMethod
    @Oneway
    @RequestWrapper(localName = "signup", targetNamespace = "http://project.com/", className = "com.project.Signup")
    @Action(input = "http://project.com/CustSignUp/signup")
    public void signup(
        @WebParam(name = "c_uname", targetNamespace = "")
        String cUname,
        @WebParam(name = "c_name", targetNamespace = "")
        String cName,
        @WebParam(name = "c_address", targetNamespace = "")
        String cAddress,
        @WebParam(name = "c_phn", targetNamespace = "")
        int cPhn,
        @WebParam(name = "c_mail", targetNamespace = "")
        String cMail,
        @WebParam(name = "c_pass", targetNamespace = "")
        String cPass);

}