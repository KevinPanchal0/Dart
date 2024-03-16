import 'dart:io';

class Item {
  int itemNumber;
  String itemName;
  int quantity;
  double tax;
  double discount;

  Item(this.itemNumber, this.itemName, this.quantity, this.tax, this.discount);

  void displayDetails() {
    print('Item Number: $itemNumber');
    print('Item Name: $itemName');
    print('Quantity: $quantity');
    print('Tax: $tax');
    print('Discount: $discount');
    print('--------------------------------');
  }
}

void main() {
  String userId = 'Kevin';
  String password = 'Kevin@123';

  print('Enter User ID:');
  String enteredUserId = stdin.readLineSync()!;
  print('Enter Password:');
  String enteredPassword = stdin.readLineSync()!;

  if (enteredUserId == userId && enteredPassword == password) {
    List<Item> items = [];

    int itemCount = 1;
    for (int i = 0; i < itemCount; i++) {
      print('Enter details for Item ${i + 1}:');
      print('Item Number:');
      int itemNumber = int.parse(stdin.readLineSync()!);
      print('Item Name:');
      String itemName = stdin.readLineSync()!;
      print('Quantity:');
      int quantity = int.parse(stdin.readLineSync()!);
      print('Tax:');
      double tax = double.parse(stdin.readLineSync()!);
      print('Discount:');
      double discount = double.parse(stdin.readLineSync()!);

      Item newItem = Item(itemNumber, itemName, quantity, tax, discount);
      items.add(newItem);
    }

    items.sort((a, b) => a.itemNumber.compareTo(b.itemNumber));

    print('All records in ascending order (by item number):');
    for (Item item in items) {
      item.displayDetails();
    }
  } else {
    print('Invalid credentials. Access denied.');
  }
}