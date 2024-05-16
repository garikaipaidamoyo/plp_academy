import 'dart:io';

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 == 0) {
      throw Exception("Cannot divide by zero");
    }
    return num1 / num2;
  }
}

void main() {
  Calculator calculator = Calculator();

  print("Welcome to Calculator App");

  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");
  print("5. Exit");

  stdout.write("Enter your choice (1-5): ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        stdout.write("Enter first number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        stdout.write("Enter second number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        print("Sum: ${calculator.add(num1, num2)}");
      }
      break;
    case 2:
      {
        stdout.write("Enter first number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        stdout.write("Enter second number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        print("Difference: ${calculator.subtract(num1, num2)}");
      }
      break;
    case 3:
      {
        stdout.write("Enter first number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        stdout.write("Enter second number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        print("Product: ${calculator.multiply(num1, num2)}");
      }
      break;
    case 4:
      {
        stdout.write("Enter dividend: ");
        double dividend = double.parse(stdin.readLineSync()!);
        stdout.write("Enter divisor: ");
        double divisor = double.parse(stdin.readLineSync()!);
        try {
          print("Quotient: ${calculator.divide(dividend, divisor)}");
        } catch (e) {
          print("Error: ${e.toString()}");
        }
      }
      break;
    case 5:
      {
        print("Exiting Calculator App");
        exit(0);
      }
      break;
    default:
      print("Invalid choice. Please enter a number between 1 and 5.");
  }
}
