// Define the Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor for Student class
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}
