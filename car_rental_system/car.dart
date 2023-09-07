class Car {
  String _CarNO;
  String _Brand;
  String _Model;
  int _Seats;
  double _Fees_day;
  double _DelayFines;

  Car(this._CarNO, this._Brand, this._Model, this._Seats, this._Fees_day,
      this._DelayFines);

  String get CarNO => _CarNO;
  String get Brand => _Brand;
  String get Model => _Model;
  int get Seats => _Seats;
  double get Fees_day => _Fees_day;
  double get DelayFines => _DelayFines;

  @override
  String toString() {
    return ("CarNo: $CarNO\n Brand: $Brand\n Model: $Model \n Number of seats: $Seats \n Rental fees per day: $Fees_day \n Delay fines: $DelayFines ");
  }
}
