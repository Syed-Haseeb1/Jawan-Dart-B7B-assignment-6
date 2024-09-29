// ignore_for_file: dead_code

void main() {
  // Q1
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana'];

  for (String name in names) {
    print(name);
  }

  // Q2
  List<String> days = [];

  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  for (String day in days) {
    print(day);
  }

  // Q3
  // ignore: unused_local_variable
  List<String> week = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  while (week.isNotEmpty) {
    String removedDay = week.removeLast();
    print('Removed: $removedDay');

    // Print the final state of the list
    print('Final list of days: $week');
  }
  //Q4
  List<int> numbers = [42, 15, 8, 23, 4, 16, 75, 3];

  int smallest = numbers[0];
  int greatest = numbers[0];

  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
    if (number > greatest) {
      greatest = number;
    }
  }

  print('Smallest number: $smallest');
  print('Greatest number: $greatest');

  // Q5
  Map<String, String> contacts = {
    'John': '1234',
    'Alice': '5678',
    'Bob': '91011',
    'Rick': '1213',
    'Zoe': '1415'
  };

  var keysWithLength4 = contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4:');
  for (var key in keysWithLength4) {
    print(key);
  }
  // Q6
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'USD',
      'language': 'English',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Yen',
      'language': 'Japanese',
    },
    'Germany': {
      'capitalCity': 'Berlin',
      'currency': 'Euro',
      'language': 'German',
    },
  };

  String countryKey = 'France';

  if (world.containsKey(countryKey)) {
    var countryInfo = world[countryKey];

    print('Country: $countryKey');
    print('Capital City: ${countryInfo!['capitalCity']}');
    print('Currency: ${countryInfo['currency']}');
  } else {
    print('Country not found in the world map.');
  }
  // Q7
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  String day = 'fri';

  if (expenses.containsKey(day)) {
    expenses[day] = 5000.0;
  } else {
    expenses[day] = 5000.0;
  }

  print('Updated expenses: $expenses');

  // Q8
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.removeWhere((user) => user['eligible'] == false);

  print('Eligible users: $usersEligibility');

  // Q9
  List<int> listNumbers = [10, 23, 5, 42, 16, 8];

  int maxValue = findMax(numbers);

  print('Maximum value: $maxValue');
}

int findMax(List<int> listNumbers) {
  if (listNumbers.isEmpty) {
    throw Exception('The list is empty');
  }

  int max = listNumbers[0];
  for (int number in listNumbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;

  // Q10
  List<String> originalList = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'grape',
    'kiwi'
  ];

  List<String> uniqueList = removeDuplicates(originalList);

  print('List without duplicates: $uniqueList');
}

List<String> removeDuplicates(List<String> list) {
  List<String> result = [];
  Set<String> seen = {};

  for (String item in list) {
    if (!seen.contains(item)) {
      seen.add(item);
      result.add(item);
    }
  }

  return result;

  // Q11
  List<String> myList = ['apple', 'banana', 'orange', 'grape', 'kiwi'];

  int n = 3;

  List<String> newList = getFirstNElements(myList, n);

  print('First $n elements: $newList');
}

List<T> getFirstNElements<T>(List<T> list, int n) {
  if (n > list.length) {
    n = list.length;
  }

  return list.sublist(0, n);

  // Q12
  List<String> ourList = ['apple', 'banana', 'orange', 'grape', 'kiwi'];

  List<String> reversedList = reverseList(ourList);

  print('Original list: $ourList');
  print('Reversed list: $reversedList');
}

List<T> reverseList<T>(List<T> list) {
  List<T> reversed = List<T>.from(list.reversed);
  return reversed;

  // Q13
  List<int> originalList = [1, 2, 3, 2, 4, 5, 1, 6, 4];

  List<int> uniqueList = getUniqueElements(originalList);

  print('Unique elements: $uniqueList');
}

List<int> getUniqueElements(List<int> list) {
  List<int> result = [];
  Set<int> seen = {};

  for (int item in list) {
    if (!seen.contains(item)) {
      seen.add(item);
      result.add(item);
    }
  }

  return result;

  // Q14
  int number = 10;

  while (number > 0) {
    print(number);
    number--;
  }

  // Q15
  List<int> originalList = [-10, 5, -3, 8, 0, 12, -1, 7];

  List<int> positiveList = filterPositiveNumbers(originalList);

  print('Positive numbers: $positiveList');
}

List<int> filterPositiveNumbers(List<int> list) {
  return list.where((number) => number >= 0).toList();

  // Q16
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> evenList = filterEvenNumbers(originalList);

  print('Even numbers: $evenList');
}

List<int> filterEvenNumbers(List<int> list) {
  return list.where((number) => number.isEven).toList();

  // Q17
  List<int> originalList = [1, 2, 3, 4, 5];

  List<int> squaredList = squareNumbers(originalList);

  print('Squared numbers: $squaredList');
}

List<int> squareNumbers(List<int> list) {
  return list.map((number) => number * number).toList();

  // Q18
  int sum = 0; 
  int number = 1; 

  do {
    if (number % 2 != 0) { 
      sum += number; 
    }
    number++; 
  } while (number <= 50); 
  print('Sum of odd numbers from 1 to 50: $sum');

  // Q19
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 999.99,
    'quantity': 5, 
  };

  checkStock(product);
}

void checkStock(Map<String, dynamic> product) {
  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }

  // Q20
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }
  
  // Q21
  int number = 123456; 
  int digitCount = countDigits(number);

  print('Number of digits in $number: $digitCount');
}

int countDigits(int number) {
  int count = 0;
  int tempNumber = number.abs();

  do {
    count++;
    tempNumber ~/= 10;
  } while (tempNumber > 0);

  return count;

  // Q22
  Map<String, int> shoppingCart = {
    'Banana': 2,
    'Apple': 5,
    'Orange': 3,
    'Grapes': 4,
  };

  if (shoppingCart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}
