import '../models/food.dart';

class Piza {
  final List<Food> popularFood = [
    Food(
        id: 1,
        name: "Tandoori Chicken",
        price: 96.00,
        rate: 4.9,
        clients: 200,
        image: "assets/images/plate-001.png"),
    Food(
        id: 2,
        name: "Salmon",
        price: 40.50,
        rate: 4.5,
        clients: 168,
        image: "assets/images/plate-002.png"),
    Food(
        id: 3,
        name: "Rice and meat",
        price: 130.00,
        rate: 4.8,
        clients: 150,
        image: "assets/images/plate-003.png"),
    Food(
        id: 4,
        name: "Vegan food",
        price: 400.00,
        rate: 4.2,
        clients: 150,
        image: "assets/images/plate-007.png"),
    Food(
        id: 5,
        name: "Rich food",
        price: 1000.00,
        rate: 4.6,
        clients: 10,
        image: "assets/images/plate-006.png")
  ];

  // List<Food> filterByid(int id) {
  //   return popularFood.where((element) => element.id == id).toList();
  // }

  Food getProductById(int id) {
    return popularFood.firstWhere((element) => element.id == id);
  }
}
