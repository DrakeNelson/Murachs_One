package com.Drake.business.Section1.Chapter2;

import java.io.Serializable;
/*
this class is ajavabean or bean because it follows the three rules of javabeans
1.  a javabean must contain a zer-argument constructor
2. a javabean must contain get and set methods for all the properties that need to be accessed by JSPs
    (note booleans have "is" methods instead of "get"
3. a javabean must implement the serializable or externalizable interface
 */
public class User implements Serializable {
    private String firstName;
    private String lastName;

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String email;

    public User(){
        firstName = "";
        lastName = "";
        email = "";

    }
    public User( String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {

    }
}