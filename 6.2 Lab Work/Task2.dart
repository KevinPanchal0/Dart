import 'dart:io';

class Employee {
  String name;
  double salary;
  String designation;

  Employee(this.name, this.salary, this.designation);

  void displayDetails() {
    print('Name: $name');
    print('Salary: $salary');
    print('Designation: $designation');
    print('--------------------------------');
  }
}

void main() {
  List<Employee> employees = [];

  print('Enter the number of employees:');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('Enter details for employee ${i + 1}:');
    print('Name:');
    String name = stdin.readLineSync()!;
    print('Salary:');
    double salary = double.parse(stdin.readLineSync()!);
    print('Designation:');
    String designation = stdin.readLineSync()!;

    Employee newEmployee = Employee(name, salary, designation);
    employees.add(newEmployee);
  }

  employees.sort((a, b) => a.name.compareTo(b.name));

  print('Details of employees in ascending order of name:');
  for (Employee employee in employees) {
    employee.displayDetails();
  }
}
