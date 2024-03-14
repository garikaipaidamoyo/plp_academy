class MyName {
//properties of the instructor
  String name;
  String phone;
  bool isGraduate;
  int age;
  String country;
  String hobby;
  // constructor- parametric constructor parameters
  MyName(this.name, this.phone, this.isGraduate, this.age, this.country,
      this.hobby);

  //method /function
  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Is Graduate: ${isGraduate ? 'Graduate' : 'Non Graduate'}');
    print('Age: $age');
    print('Country: $country');
    print('Hobby: $hobby');
  }
}

void main() {
  var myname =
      MyName('Paidamoyo ', '0773574766', true, 20, 'SouthAfrica', 'Music');

  /// call the function
  myname.displayInfo();
}
// main function to create the object

