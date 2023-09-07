import 'Admin.dart';
import 'car.dart';

void main() {
  List? cars = List.filled(20, Car);
  cars[0] = Car("1", "TOYOTA", "Camry", 5, 200, 20);
  cars[1] = Car("2", "Honda", "Civic", 5, 200, 20);
  cars[2] = Car("3", "Ford", "F-150", 3, 100, 10);
  cars[3] = Car("4", "Chevrolet", "Silverado", 3, 100, 10);
  cars[4] = Car("5", "BMW", "3 Series", 5, 200, 20);
  cars[5] = Car("6", "Mercedes-Benz", "	C-Class", 5, 200, 20);
  cars[6] = Car("7", "Hyundai", "Elantra", 5, 200, 20);
  cars[7] = Car("8", "Kia", "Soul", 5, 200, 20);
  cars[8] = Car("9", "Nissan", "Altima", 5, 200, 20);
  cars[9] = Car("10", "Volkswagen", "Golf", 5, 200, 20);
  cars[10] = Car("11", "Toyota", "RAV4", 7, 300, 30);
  cars[11] = Car("12", "Ford", "Explorer", 7, 300, 30);
  cars[12] = Car("13", "Chevrolet", "Equinox", 5, 200, 20);
  cars[13] = Car("14", "Honda", "	CR-V", 7, 300, 30);
  cars[14] = Car("15", "Volkswagen", "Tiguan", 7, 300, 30);
  cars[15] = Car("16", "Nissan", "Rogue", 5, 200, 20);
  cars[16] = Car("17", "Kia", "Sorento", 7, 300, 30);
  cars[17] = Car("18", "Hyundai", "Santa Fe", 7, 300, 30);
  cars[18] = Car("19", "Mercedes-Benz", "GLC", 5, 200, 20);
  cars[19] = Car("20", "BMW", "X5", 7, 300, 30);

  print("***** WELCOME TO OUR CAR RENTAL SYSTEM ***** ");

  print("Here is the car rent catalog... \n");
  for (int i = 0; i < cars.length; i++) {
    print("${cars[i]}\n");
  }

  AdminMenu Admin = new AdminMenu();
  Admin.menu();
}
