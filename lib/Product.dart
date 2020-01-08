
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
//  factory Product.fromXml(Map xml){
//    return Product(
//      xml['name'],
//      xml['url'],
//      xml['fabric'],
//      xml['currencyId'],
//      xml['categoryId'],
//      xml['priceRetail'],
//      xml['priceWholesale'],
//    );
//  }

  String get name => this._name;
  String get url => this._url;
  String get fabric => this._fabric;
  String get currencyId => this._currencyId;
  int get categoryId => this._categoryId;
  int get priceRetail => this._priceRetail;
  int get priceWholesale => this._priceWholesale;
}