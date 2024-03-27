// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor for Teacher class
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}
