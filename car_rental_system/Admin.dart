import 'dart:io';
import 'Customer.dart';
import 'RentedCar.dart';
import 'ReturnedCar.dart';
import 'UserManager.dart';
import 'user.dart';

class AdminMenu extends Manager {
  void menu() {
    while (true) {
      print("-----------------------------------\n 1- USER \n 2- ADMIN");
      int choice = int.parse(stdin.readLineSync()!);
      if (choice == 1) {
        print("-----------------------------------\n");
        AddUser(UserData());
      }
      print(
          "***** This is the admin menu *****\n 1- Display users \n 2- Customer Manager \n 3- Rent Manager \n 4- Return Manager");
      int choose = int.parse(stdin.readLineSync()!);
      switch (choose) {
        case 1:
          print("-----------------------------------\n");
          DisplayUsers();
          break;
        case 2:
          print(
              "***** This is the customer manager menu *****\n 1- add customer \n 2- delete customer \n 3- search on customer \n 4- display all customers");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              print("-----------------------------------\n");
              AddCust(CustData());
              break;
            case 2:
              print(
                  "-----------------------------------\n Enter the customer name");
              String name = stdin.readLineSync()!;
              deleteCust(name);
              break;
            case 3:
              print(
                  "-----------------------------------\n Enter the customer name");
              String name = stdin.readLineSync()!;
              SearchCust(name);
              break;
            case 4:
              print("-----------------------------------\n");
              DisplayCust();
              break;
          }

          break;
        case 3:
          print(
              "***** This is the car rent manager menu *****\n 1- add Rented Car \n 2- delete Rented Car \n 3- search on Rented Car \n 4- display all Rented Cars");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              print("-----------------------------------\n");
              AddRent(RentData());
              break;
            case 2:
              print(
                  "-----------------------------------\n Enter the Car number");
              String carNo = stdin.readLineSync()!;
              deleteRent(carNo);
              break;
            case 3:
              print(
                  "-----------------------------------\n Enter the Car number");
              String carNo = stdin.readLineSync()!;
              SearchRent(carNo);
              break;
            case 4:
              print("-----------------------------------\n");
              DisplayRent();
              break;
          }

          break;
        case 4:
          print(
              "***** This is the returned car manager menu *****\n 1- add Returned Car \n 2- delete Returned Car \n 3- search on Returned Car \n 4- display all Returned Cars");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              print("-----------------------------------\n");
              AddReturn(ReturnData());
              break;
            case 2:
              print(
                  "-----------------------------------\n Enter the Car number");
              String carNo = stdin.readLineSync()!;
              deleteReturn(carNo);
              break;
            case 3:
              print(
                  "-----------------------------------\n Enter the Car number");
              String carNo = stdin.readLineSync()!;
              SearchReturn(carNo);
              break;
            case 4:
              print("-----------------------------------\n");
              DisplayReturn();
              break;
          }
          break;

        default:
          exit(0);
      }
    }
  }

  void SearchCustomerData() {
    print(
        '-----------------------------------\n Enter Customer name to search:');
    String name = stdin.readLineSync()!;

    var searchResults = SearchCust(name);

    if (searchResults.isNotEmpty) {
      for (var customer in searchResults) {
        print(customer);
      }
    }
  }

  void SearchRentData() {
    print('-----------------------------------\n Enter car number to search:');
    String carNo = stdin.readLineSync()!;

    var searchResults = SearchRent(carNo);

    if (searchResults.isNotEmpty) {
      for (var rentedcar in searchResults) {
        print(rentedcar);
      }
    }
  }

  void SearchReturnData() {
    print('-----------------------------------\n Enter car number to search:');
    String carNo = stdin.readLineSync()!;

    var searchResults = SearchReturn(carNo);

    if (searchResults.isNotEmpty) {
      for (var returncar in searchResults) {
        print(returncar);
      }
    }
  }
}

Customer CustData() {
  print("-----------------------------------\n Enter the customer name: ");
  String Name = stdin.readLineSync()!;
  print("Enter the customer phone number: ");
  String PhoneNumber = stdin.readLineSync()!;
  print("Enter the customer address: ");
  String Address = stdin.readLineSync()!;
  print("Enter the rented car number: ");
  String Car_number = stdin.readLineSync()!;
  print("Enter the customer destination: ");
  String Destination = stdin.readLineSync()!;
  print("Enter the customer rent date: ");
  String RentDate = stdin.readLineSync()!;
  print("Enter the expected return date: ");
  String ReturnDate = stdin.readLineSync()!;
  return Customer(Name, PhoneNumber, Address, Car_number, Destination, RentDate,
      ReturnDate);
}

RentedCar RentData() {
  print("-----------------------------------\n Enter the rented car number: ");
  String CarNumber = stdin.readLineSync()!;
  print("Enter the customer name: ");
  String CustName = stdin.readLineSync()!;
  print("Enter the rented date: ");
  String RentDate = stdin.readLineSync()!;
  print("Enter the rented car destination: ");
  String Destination = stdin.readLineSync()!;
  print("Enter the rented car number: ");
  int RentDays = int.parse(stdin.readLineSync()!);
  print("Enter the rented car fees: ");
  double RentFees = double.parse(stdin.readLineSync()!);

  return RentedCar(
      CarNumber, CustName, RentDate, Destination, RentDays, RentFees);
}

ReturnedCar ReturnData() {
  print(
      "-----------------------------------\n Enter the returned car number: ");
  String CarNumber = stdin.readLineSync()!;
  print("Enter the customer name: ");
  String CustName = stdin.readLineSync()!;
  print("Enter the returned date: ");
  String ReturnDate = stdin.readLineSync()!;
  print("Enter the number of delay (days): ");
  int Delay = int.parse(stdin.readLineSync()!);
  print("Enter the delay fines: ");
  double Fines = double.parse(stdin.readLineSync()!);

  return ReturnedCar(CarNumber, CustName, ReturnDate, Delay, Fines);
}

User UserData() {
  print(
      "-----------------------------------\n Enter the number of car you chose: ");
  String Car_number = stdin.readLineSync()!;
  print("Enter your name: ");
  String Name = stdin.readLineSync()!;
  print("Enter your phone number: ");
  String PhoneNumber = stdin.readLineSync()!;
  print("Enter your destination: ");
  String Destination = stdin.readLineSync()!;
  print("Enter the rent date you want: ");
  String RentDate = stdin.readLineSync()!;
  print("Enter the expected return date: ");
  String ReturnDate = stdin.readLineSync()!;
  return User(Car_number, Name, PhoneNumber, Destination, RentDate, ReturnDate);
}
