package com.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
    private String username;

    public String execute() {
        // Retrieve the logged-in user's username from the session
        Map<String, Object> session = ActionContext.getContext().getSession();
        username = (String) session.get("username");

        return SUCCESS;
    }

    // Getter and setter for the username variable
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}