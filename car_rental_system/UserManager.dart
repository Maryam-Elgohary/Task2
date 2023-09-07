import 'Customer.dart';
import 'RentedCar.dart';
import 'ReturnedCar.dart';
import 'user.dart';

class Manager {
  //USer
  List<User> users = [];
  void AddUser(User User) {
    users.add(User);
    print(
        "The admin will contact you soon! \nThanks for using our car rental system \n \n");
  }

//Customer
  List<Customer> customers = [];
  void AddCust(Customer customer) {
    customers.add(customer);
    print('Customer is added successfully!\n');
  }

  void deleteCust(String Name) {
    customers.removeWhere((customer) => customer.Name == Name);
    print("This Customer is deleted successfully!\n");
  }

  List<Customer> SearchCust(String Name) {
    var searchResults =
        customers.where((customer) => customer.Name == Name).toList();

    if (searchResults.isEmpty) {
      print('No Customers found for $Name!\n');
      return [];
    }
    return searchResults;
  }

  void DisplayCust() {
    for (var i = 0; i < customers.length; i++) {
      print('Customer ${i + 1}:\n ${customers[i]}\n');
    }

    if (customers.isEmpty) {
      print("There are no customers to display\n");
    }
  }

  //Rented Car
  List<RentedCar> RentedCars = [];
  void AddRent(RentedCar rentedcar) {
    RentedCars.add(rentedcar);
    print('Rented Car is added successfully!\n');
  }

  void deleteRent(String CarNumber) {
    RentedCars.removeWhere((rentedcar) => rentedcar.CarNumber == CarNumber);
    print("This Rented Car is deleted successfully!\n");
  }

  List<RentedCar> SearchRent(String CarNumber) {
    var searchResults =
        RentedCars.where((rentedcar) => rentedcar.CarNumber == CarNumber)
            .toList();

    if (searchResults.isEmpty) {
      print('No Rented Cars found for $CarNumber!\n');
      return [];
    }
    return searchResults;
  }

  void DisplayRent() {
    for (var i = 0; i < RentedCars.length; i++) {
      print('Rented Car ${i + 1}:\n ${RentedCars[i]}\n');
    }

    if (RentedCars.isEmpty) {
      print("There are no rented cars to display\n");
    }
  }

  //Returned Car
  List<ReturnedCar> ReturnedCars = [];
  void AddReturn(ReturnedCar returnedcar) {
    ReturnedCars.add(returnedcar);
    print('Returned Car is added successfully!\n');
  }

  void deleteReturn(String CarNumber) {
    ReturnedCars.removeWhere(
        (returnedcar) => returnedcar.CarNumber == CarNumber);
    print("This Returned Car is deleted successfully!\n");
  }

  List<ReturnedCar> SearchReturn(String CarNumber) {
    var searchResults =
        ReturnedCars.where((returnedcar) => returnedcar.CarNumber == CarNumber)
            .toList();

    if (searchResults.isEmpty) {
      print('No Returned Cars found for $CarNumber!\n');
      return [];
    }
    return searchResults;
  }

  void DisplayReturn() {
    for (var i = 0; i < ReturnedCars.length; i++) {
      print('Returned Car ${i + 1}:\n ${ReturnedCars[i]}\n');
    }

    if (RentedCars.isEmpty) {
      print("There are no returned cars to display\n");
    }
  }

  //Pre Rent
  void DisplayUsers() {
    for (var i = 0; i < users.length; i++) {
      print('User ${i + 1}:\n ${users[i]}\n');
    }

    if (users.isEmpty) {
      print("There are no users to display\n");
    }
  }
}
