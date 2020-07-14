package payroll.dao;

import payroll.Employee;

import java.util.Optional;

public interface EmployeeDao {
    Optional<Employee> getProfileById(int id);
}
