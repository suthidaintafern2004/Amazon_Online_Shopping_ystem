import 'dart:core';
import 'constants.dart';

class Item {
  String _product_id;
  int _quantity;
  double _price;

  Item(this._product_id, this._quantity, this._price);

  void update_quantity(int quantity) {
    // Your implementation here
  }
}

class ShoppingCart {
  List<Item> _items = [];

  void add_item(Item item) {
    // Your implementation here
  }

  void remove_item(Item item) {
    // Your implementation here
  }

  void update_item_quantity(Item item, int quantity) {
    // Your implementation here
  }

  List<Item> get_items() {
    return _items;
  }

  void checkout() {
    // Your implementation here
  }
}

class OrderLog {
  int _order_number;
  OrderStatus _status;
  DateTime _creation_date;

  OrderLog(this._order_number, [this._status = OrderStatus.PENDING]) {
    _creation_date = DateTime.now();
  }
}

class Order {
  int _order_number;
  OrderStatus _status;
  DateTime _order_date;
  List<OrderLog> _order_log = [];

  Order(this._order_number, [this._status = OrderStatus.PENDING]) {
    _order_date = DateTime.now();
  }

  void send_for_shipment() {
    // Your implementation here
  }

  void make_payment(payment) {
    // Your implementation here
  }

  void add_order_log(OrderLog order_log) {
    // Your implementation here
  }
}
