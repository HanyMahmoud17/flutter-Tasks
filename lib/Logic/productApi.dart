// import 'package:app/Screens/productsScreen.dart';
import 'package:app/models/product.dart';
import 'package:dio/dio.dart';
// import 'package:movie/Models/product.dart';

class ProductApIHelper {
  // i make an object of server to take with server
  var api = Dio();

  Future<List<Product>> getAll() async {
    List<Product> productList = [];
    var response = await api.get("https://dummyjson.com/products");
    var data = response.data["products"] as List;
    // print(response.data["products"]);

    productList = data
        .map((e) => Product(
              id: e["id"],
              title: e["title"],
              description: e["description"],
              price: e["price"],
              discountPercentage: e["discountPercentage"],
              // rating: e["rating"],
              category: e["category"],
              thumbnail: e["thumbnail"],
            ))
        .toList();
    return productList;
  }
}
