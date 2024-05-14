// Import the Student.dart and Teacher.dart files
import 'Student.dart';
import 'Teacher.dart';

void main() {
  // Create a student object
  Student student1 = Student('John Doe', 15, 10);

  // Create a teacher object
  Teacher teacher1 = Teacher('Jane Smith', 35, 'Mathematics');

  // Print student's information
  student1.printStudentInfo();

  // Print teacher's information
  teacher1.printTeacherInfo();
}
