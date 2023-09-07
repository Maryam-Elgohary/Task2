class User {
  String _Car_number;
  String _Name;
  String _PhoneNumber;
  String _RentDate;
  String _ReturnDate;
  String _Destination;

  User(this._Car_number, this._Name, this._PhoneNumber, this._Destination,
      this._RentDate, this._ReturnDate);

  String get Car_number => _Car_number;
  String get Name => _Name;
  String get PhoneNumber => _PhoneNumber;
  String get RentDate => _RentDate;
  String get ReturnDate => _ReturnDate;
  String get Destination => _Destination;

  @override
  String toString() {
    return ("Car number: $Car_number \n Name: $Name \n Phone Number: $PhoneNumber \n Destination: $Destination \n Rent Date: $RentDate \n Return Date: $ReturnDate");
  }
}
