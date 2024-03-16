import 'dart:io';
class Student {
  String name;
  int age;
  String address;

  Student(this.name, this.age, this.address);

  void displayDetails() {
    print('--------------------------------');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('--------------------------------');
  }
}

void main() {
  List<Student> students = [];

  print('Enter the number of students:');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('Enter details for student ${i + 1}:');
    print('Name:');
    String name = stdin.readLineSync()!;
    print('Age:');
    int age = int.parse(stdin.readLineSync()!);
    print('Address:');
    String address = stdin.readLineSync()!;

    Student newStudent = Student(name, age, address);
    students.add(newStudent);
  }

  print('Details of ${students.length} students:');
  for (Student student in students) {
    student.displayDetails();
  }
}
