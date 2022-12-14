
package com.viva;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;
import com.viva.model.Admin;
import com.viva.model.Customer;
import com.viva.model.DGuy;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "LoginAd", targetNamespace = "http://viva.com/")
@XmlSeeAlso({
    com.viva.ObjectFactory.class,
    com.viva.model.ObjectFactory.class
})
public interface LoginAd {


    /**
     * 
     * @param mail
     * @param pass
     * @return
     *     returns com.viva.model.Admin
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "login", targetNamespace = "http://viva.com/", className = "com.viva.Login")
    @ResponseWrapper(localName = "loginResponse", targetNamespace = "http://viva.com/", className = "com.viva.LoginResponse")
    @Action(input = "http://viva.com/LoginAd/loginRequest", output = "http://viva.com/LoginAd/loginResponse")
    public Admin login(
        @WebParam(name = "mail", targetNamespace = "")
        String mail,
        @WebParam(name = "pass", targetNamespace = "")
        String pass);

    /**
     * 
     * @param cUname
     * @param cPass
     * @return
     *     returns com.viva.model.Customer
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginCust", targetNamespace = "http://viva.com/", className = "com.viva.LoginCust")
    @ResponseWrapper(localName = "loginCustResponse", targetNamespace = "http://viva.com/", className = "com.viva.LoginCustResponse")
    @Action(input = "http://viva.com/LoginAd/loginCustRequest", output = "http://viva.com/LoginAd/loginCustResponse")
    public Customer loginCust(
        @WebParam(name = "c_uname", targetNamespace = "")
        String cUname,
        @WebParam(name = "c_pass", targetNamespace = "")
        String cPass);

    /**
     * 
     * @param dPass
     * @param dUname
     * @return
     *     returns com.viva.model.DGuy
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginDguy", targetNamespace = "http://viva.com/", className = "com.viva.LoginDguy")
    @ResponseWrapper(localName = "loginDguyResponse", targetNamespace = "http://viva.com/", className = "com.viva.LoginDguyResponse")
    @Action(input = "http://viva.com/LoginAd/loginDguyRequest", output = "http://viva.com/LoginAd/loginDguyResponse")
    public DGuy loginDguy(
        @WebParam(name = "d_uname", targetNamespace = "")
        String dUname,
        @WebParam(name = "d_pass", targetNamespace = "")
        String dPass);

}
