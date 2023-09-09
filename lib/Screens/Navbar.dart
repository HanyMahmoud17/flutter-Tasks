import 'package:app/Screens/Movie.dart';
import 'package:app/Screens/ProductDetails.dart';
import 'package:app/Screens/Products.dart';
import 'package:app/Screens/Profile.dart';
import 'package:app/Screens/ProductList.dart';
// import 'package:app/Screens/TodoList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;

  List<String> nameing = ["profile", "products", "movies"];

  List<Widget> content = [
    Profile(),
    ProductsItems(),
    MovieListScreen(),
    ProductDetails(),
    ProductListScreen(),
    // TodoList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hany",
          selectionColor: Colors.white,
        ),
        leading: Icon(Icons.man),
        actions: [Icon(FontAwesomeIcons.home)],
        backgroundColor: Color.fromARGB(255, 4, 21, 1),
      ),
      body: content[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: nameing[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: nameing[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: nameing[2],
          ),
        ],
      ),
    );
  }
}
// }
