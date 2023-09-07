class RentedCar {
  String _CarNumber;
  String _CustName;
  String _RentDate;
  String _Destination;
  int _RentDays;
  double _RentFees;

  RentedCar(this._CarNumber, this._CustName, this._RentDate, this._Destination,
      this._RentDays, this._RentFees);

  String get CarNumber => _CarNumber;
  String get CustName => _CustName;
  String get RentDate => _RentDate;
  String get Destination => _Destination;
  int get RentDays => _RentDays;
  double get RentFees => _RentFees;

  @override
  String toString() {
    return (" Rented Car Number: $CarNumber \n Customer Name: $CustName \n Rent Date: $RentDate \n Destination: $Destination \n Days: $RentDays \n Rent Fees: $RentFees");
  }
}
