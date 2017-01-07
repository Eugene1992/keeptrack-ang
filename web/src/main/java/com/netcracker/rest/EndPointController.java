package com.netcracker.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST test controller for UI testing.
 */
@RestController
public class EndPointController {

    @RequestMapping("rest/task")
    public Task getSomeData() {
        return new Task("Task 1", new Employee("Evgeniy", "Deyneka"));
    }
}
