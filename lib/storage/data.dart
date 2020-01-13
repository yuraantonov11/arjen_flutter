import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import 'package:path_provider/path_provider.dart';

//import '../Product.dart';


Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/counter.txt');
}

Future<File> writeData(String data) async {
  final file = await _localFile;

  // Write the file.
  return file.writeAsString('$data');
}

Future<String> fetchArjenPrices() async {
//  return http.get('https://arjen.com.ua/prices/xml.php');
  var url = 'https://arjen.com.ua/prices/xml.php';

  // Await the http get response, then decode the json-formatted response.
  http.Response response;
  try{
    response = await http.get(url);
  } catch (e){
//    print(e);
  }

  if (response.statusCode == 200) {
//    var document = xml.parse(response.body);
    final Xml2Json transformer = Xml2Json();
    transformer.parse(response.body);

    String json = transformer.toGData();
    writeData(json);


//    var offers = document.findAllElements('offer');
//    List<Product> productsList = offers.map((offer) => Product(
//      offer.findElements('name').first.text,
//      offer.findElements('currencyId').first.text,
//      offer.findElements('fabric_picture').first.text,
//      offer.findElements('currencyId').first.text,
//      int.tryParse(offer.findElements('categoryId').first.text),
//      int.tryParse(offer.findElements('price_retail').first.text),
//      int.tryParse(offer.findElements('price_wholesale').first.text),
//    )).toList();
//    print('Number of books about http: $productsList.');
    return json;
  } else {
    throw response.statusCode;
  }
}
