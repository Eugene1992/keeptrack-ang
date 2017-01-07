package com.netcracker.rest;

/**
 * Mock entity for REST and UI testing.
 */
public class Task {
    private String name;
    private Employee creator;

    public Task(String name, Employee creator) {
        this.name = name;
        this.creator = creator;
    }

    public String getName() {
        return name;
    }

    public Employee getCreator() {
        return creator;
    }
}
