package com.example.login;

public class LoginService {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("amit") && password.equals("chauhan");
	}

}