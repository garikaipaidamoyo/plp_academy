import 'human.dart';
import 'person.dart';

class Student extends Person implements Human {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void displayInfo() {
    print('Student - Name: $name, Age: $age, Major: $major');
  }

  @override
  void speak() {
    print('I am a student.');
  }
}
