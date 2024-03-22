import 'dart:io';
import 'person.dart';
import 'student.dart';

void main() {
  var person = Person('John', 30);
  person.displayInfo();

  var student = Student('Alice', 20, 'Computer Science');
  student.displayInfo();
  student.speak();

  // Example of initializing data from a file
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  for (var line in lines) {
    var data = line.split(',');
    var name = data[0];
    var age = int.parse(data[1]);
    var major = data[2];
    var studentFromFile = Student(name, age, major);
    studentFromFile.displayInfo();
  }
}
