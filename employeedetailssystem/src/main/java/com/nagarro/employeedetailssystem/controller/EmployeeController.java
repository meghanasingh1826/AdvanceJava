package com.nagarro.employeedetailssystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nagarro.employeedetailssystem.entity.Employee;
import com.nagarro.employeedetailssystem.exception.ResourceNotFoundException;
import com.nagarro.employeedetailssystem.repository.EmployeeRepository;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    // get all employees
    @GetMapping
    public List < Employee > getAllEmployees() {
        return this.employeeRepository.findAll();
    }

    // get employee by id
    @GetMapping("/{employeeCode}")
    public Employee getEmployeeById(@PathVariable(value = "employeeCode") long employeeId) {
        return this.employeeRepository.findById(employeeId)
            .orElseThrow(() -> new ResourceNotFoundException("Employee not found with id :" + employeeId));
    }

    // create employee
    @PostMapping
    public Employee createEmployee(@RequestBody Employee employee) {
        return this.employeeRepository.save(employee);
    }

    // update employee
    @PutMapping("/{employeeCode}")
    public Employee updateEmployee(@RequestBody Employee employee, @PathVariable("employeeCode") long employeeId) {
        Employee existingEmployee = this.employeeRepository.findById(employeeId)
            .orElseThrow(() -> new ResourceNotFoundException("Employee not found with id :" + employeeId));
        existingEmployee.setEmployeeName(employee.getEmployeeName());
        existingEmployee.setDob(employee.getDob());
        existingEmployee.setEmail(employee.getEmail());
        existingEmployee.setLocation(employee.getLocation());

        return this.employeeRepository.save(existingEmployee);
    }

    // delete employee by id
    @DeleteMapping("/{employeeCode}")
    public ResponseEntity < Employee > deleteUser(@PathVariable("employeeCode") long employeeId) {
        Employee existingEmployee = this.employeeRepository.findById(employeeId)
            .orElseThrow(() -> new ResourceNotFoundException("Employee not found with id :" + employeeId));
        this.employeeRepository.delete(existingEmployee);
        return ResponseEntity.ok().build();
    }
}