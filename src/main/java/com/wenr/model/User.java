package com.wenr.model;

public class User {
	private int id;
	private String name;
	private String username;
	private String password;

	public int getId() {
		return id;
	}

	public User setId(final int id) {
		this.id = id;
		return this;
	}

	public String getName() {
		return name;
	}

	public User setName(final String name) {
		this.name = name;
		return this;
	}

	public String getUsername() {
		return username;
	}

	public User setUsername(final String username) {
		this.username = username;
		return this;
	}

	public String getPassword() {
		return password;
	}

	public User setPassword(final String password) {
		this.password = password;
		return this;
	}
}
