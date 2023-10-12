abstract class Search {
  void searchProductsByName(String name);
  void searchProductsByCategory(String category);
}

class Catalog implements Search {
  Map<String, dynamic> _productNames = {};
  Map<String, dynamic> _productCategories = {};

  @override
  void searchProductsByName(String name) {
    return _productNames[name];
  }

  @override
  void searchProductsByCategory(String category) {
    return _productCategories[category];
  }
}
