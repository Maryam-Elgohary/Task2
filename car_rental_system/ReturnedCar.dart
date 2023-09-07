class ReturnedCar {
  String _CarNumber;
  String _CustName;
  String _ReturnDate;
  int _Delay;
  double _Fines;

  ReturnedCar(this._CarNumber, this._CustName, this._ReturnDate, this._Delay,
      this._Fines);

  String get CarNumber => _CarNumber;
  String get CustName => _CustName;
  String get ReturnDate => _ReturnDate;
  int get Delay => _Delay;
  double get Fines => _Fines;

  @override
  String toString() {
    return (" Rented Car Number: $CarNumber \n Customer Name: $CustName \n Return Date: $ReturnDate \n Delay: $Delay \n Fines: $Fines ");
  }
}
