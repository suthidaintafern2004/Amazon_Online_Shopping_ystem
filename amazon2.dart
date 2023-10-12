import 'package:your_package_name/constants.dart';

// For simplicity, we are not defining getter and setter functions. The reader can
// assume that all class attributes are private and accessed through their respective
// public getter methods and modified only through their public methods function.

class Account {
  String _userName;
  String _password;
  String _name;
  String _email;
  String _phone;
  String _shippingAddress;
  String _status = AccountStatus.ACTIVE;
  List<String> _creditCards = [];
  List<String> _bankAccounts = [];

  Account(this._userName, this._password, this._name, this._email, this._phone, this._shippingAddress);

  void addProduct(Product product) {
    // Implement your addProduct logic here
  }

  void addProductReview(Review review) {
    // Implement your addProductReview logic here
  }

  void resetPassword() {
    // Implement your resetPassword logic here
  }
}

abstract class Customer {
  String _cart;
  String _order;

  Customer(this._cart, this._order);

  String getShoppingCart() {
    return _cart;
  }

  void addItemToCart(String item) {
    // Implement your addItemToCart logic here
  }

  void removeItemFromCart(String item) {
    // Implement your removeItemFromCart logic here
  }
}

class Guest extends Customer {
  Guest(String cart, String order) : super(cart, order);

  void registerAccount() {
    // Implement your registerAccount logic here
  }
}

class Member extends Customer {
  Account _account;

  Member(String cart, String order, this._account) : super(cart, order);

  void placeOrder(String order) {
    // Implement your placeOrder logic here
  }
}
