void main() {
  // Task 1: Sum of Two Numbers
  print('Task 1: Sum of Two Numbers');
  int result = sumNumbers(7, 8);
  print('Sum: $result\n');

  // Task 2: Printing Numbers from 1 to 10
  print('Task 2: Printing Numbers from 1 to 10');
  printNumbersFromOneToTen();
  print('');

  // Task 3: Switch Statement
  print('Task 3: Switch Statement');
  fruitSwitch('Apple');
  print('');

  // Task 4: Printing Numbers from 20 to 10
  print('Task 4: Printing Numbers from 20 to 10');
  printNumbersFromTwentyToTen();
  print('');

  // Task 5: Even or Odd Number Check
  print('Task 5: Even or Odd Number Check');
  checkEvenOrOdd(25);
  print('');

  // Task 6: Finding the Largest Number in a List
  print('Task 6: Finding the Largest Number in a List');
  List<int> numbers = [12, 45, 91, 33, 7];
  int largest = findLargestNumber(numbers);
  print('Largest Number: $largest\n');

  // Task 7: Try-Catch Block for Exception Handling
  print('Task 7: Try-Catch Block for Exception Handling');
  tryCatchExample();
}

// Task 1: Create a function to sum two numbers
int sumNumbers(int num1, int num2) {
  return num1 + num2;
}

// Task 2: Use a for loop to print numbers from 1 to 10
void printNumbersFromOneToTen() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Use a switch statement to check for string values
void fruitSwitch(String fruit) {
  switch (fruit) {
    case 'Apple':
      print('Selected fruit is Apple');
      break;
    case 'Banana':
      print('Selected fruit is Banana');
      break;
    default:
      print('Unknown fruit');
  }
}

// Task 4: Use a while loop to print numbers from 20 to 10
void printNumbersFromTwentyToTen() {
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }
}

// Task 5: Use if-else statement to check even or odd number
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Task 6: Find the largest number in a list
int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  return largest;
}

// Task 7: Use try-catch block for exception handling
void tryCatchExample() {
  try {
    int result = 10 ~/ 0; // Division by zero causes an exception
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}
