// Import the student.dart and teacher.dart files
import 'student.dart';
import 'teacher.dart';

void main() {
  // Create a student object
  Student student1 = Student('John Doe', 15, 10);

  // Create a teacher object
  Teacher teacher1 = Teacher('Jane Smith', 35, 'Mathematics');

  // Print student's information
  student1.printInfo();

  // Print teacher's information
  teacher1.printInfo();
}
