import 'package:app/Logic/Data.dart';
import 'package:flutter/material.dart';

class ProductsItems extends StatefulWidget {
  // const ProductsItems({Key? key}) : super(key: key);
  const ProductsItems({super.key});

  @override
  State<ProductsItems> createState() => _ProductsItemsState();
}

class _ProductsItemsState extends State<ProductsItems> {
  Piza foods = Piza();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: foods.popularFood.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            tileColor: Color.fromARGB(255, 100, 173, 100),
            leading: Image.asset(
              e.image,
              width: 90,
              height: 120,
              fit: BoxFit.cover,
            ),
            title: Text(
              e.name,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "popions",
                  fontWeight: FontWeight.w200),
            ),
            onTap: () {
              Navigator.of(context).pushNamed("/PoductDetails", arguments: e);
            },
          ),
        );
      }).toList(),
    );
  }
}
