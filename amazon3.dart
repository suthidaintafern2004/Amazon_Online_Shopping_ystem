class ProductCategory {
  String _name;
  String _description;

  ProductCategory(this._name, this._description);
}

class ProductReview {
  int _rating;
  String _review;
  String _reviewer;

  ProductReview(this._rating, this._review, this._reviewer);
}

class Product {
  int _product_id;
  String _name;
  String _description;
  double _price;
  ProductCategory _category;
  int _available_item_count = 0;
  SellerAccount _seller;

  Product(this._product_id, this._name, this._description, this._price, this._category, this._seller);

  int getAvailableCount() {
    return _available_item_count;
  }

  void updatePrice(double newPrice) {
    // Implementation of price update goes here
  }
}

class SellerAccount {
  // Seller account related code
}
