import 'package:flutter/material.dart';
import 'package:app/Logic/productApi.dart';
import 'package:app/models/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  var api = ProductApIHelper();
  List<Product> returnedList = [];

  @override
  getData() async {
    var x = await api.getAll();
    setState(() {
      returnedList = x;
    });
    // print(x);
  }

  // to start of this data
  void initState() {
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 20),
        children: returnedList.map((e) => ProductItem(prd: e)).toList(),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  ProductItem({required this.prd});
  Product prd;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        splashColor: Color.fromARGB(104, 220, 214, 214),
        onTap: () {
          print(prd.id);
        },
        borderRadius: BorderRadius.circular(20),
        child: ClipRRect(
          child: Image.asset(
            "assets/images/hany.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Color.fromARGB(104, 220, 214, 214),
        // title: Text(prd),
        trailing: Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        leading: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
