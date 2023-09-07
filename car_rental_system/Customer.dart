class Customer {
  String _Name;
  String _PhoneNumber;
  String _Address;
  String _Car_number;
  String _Destination;
  String _RentDate;
  String _ReturnDate;

  Customer(this._Name, this._PhoneNumber, this._Address, this._Car_number,
      this._Destination, this._RentDate, this._ReturnDate);

  String get Name => _Name;
  String get PhoneNumber => _PhoneNumber;
  String get Address => _Address;
  String get Car_number => _Car_number;
  String get Destination => _Destination;
  String get RentDate => _RentDate;
  String get ReturnDate => _ReturnDate;

  @override
  String toString() {
    return (" Name: $Name \n Phone Number: $PhoneNumber \n Address: $Address \n Car number: $Car_number\n Destination: $Destination \n Rent Date: $RentDate \n Return Date: $ReturnDate");
  }
}
