
class Product {
  String _name, _url, _fabric, _currencyId;
  int _categoryId, _priceRetail, _priceWholesale;
  Product(
      this._name,
      this._url,
      this._fabric,
      this._currencyId,
      this._categoryId,
      this._priceRetail,
      this._priceWholesale,
      );

  factory Product.fromXml(Map xml){
    return Product(
      xml['name'],
      xml['url'],
      xml['fabric'],
      xml['currencyId'],
      xml['categoryId'],
      xml['priceRetail'],
      xml['priceWholesale'],
    );
  }

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      json['name'],
      json['url'],
      json['fabric'],
      json['currencyId'],
      json['categoryId'],
      json['priceRetail'],
      json['priceWholesale'],
    );
  }

//  List<Product> listFromJson(){
//    List<Product> list = [];
//    return list;
//  }

  String get name => this._name;
  String get url => this._url;
  String get fabric => this._fabric;
  String get currencyId => this._currencyId;
  int get categoryId => this._categoryId;
  int get priceRetail => this._priceRetail;
  int get priceWholesale => this._priceWholesale;
}

//class ProductsList {
//  final List<Product> products;
//
//  ProductsList({
//    this.products,
//  });
//
//  factory ProductsList.fromJson(List<dynamic> parsedJson) {
//
//    List<Product> products = new List<Product>();
//    products = parsedJson.map((i) => Product.fromJson(i)).toList();
//
//
//    return new ProductsList(
//      products: products,
//    );
//  }
//}