import 'package:flutter/material.dart';
import '../models/food.dart';
import '../widgets/food_item.dart';

class FoodMenuView extends StatelessWidget {
  FoodMenuView({super.key});

  final List<Food> foods = [

    Food(
      name: "Phở Bò",
      description: "Phở Bò Đặc Biệt",
      price: "65,000 VND",
      image: "https://i.imgur.com/2DsA49b.jpg",
    ),

    Food(
      name: "Bún Chả",
      description: "Bún Chả Hà Nội",
      price: "55,000 VND",
      image: "https://i.imgur.com/E1hLQ2K.jpg",
    ),

    Food(
      name: "Cơm Tấm",
      description: "Cơm Tấm Sườn Bì Chả",
      price: "50,000 VND",
      image: "https://i.imgur.com/Ly8ZQ2O.jpg",
    ),

    Food(
      name: "Bánh Mì",
      description: "Bánh Mì Thịt Nướng",
      price: "35,000 VND",
      image: "https://i.imgur.com/ZXBtVw7.jpg",
    ),

    Food(
      name: "Gỏi Cuốn",
      description: "Gỏi Cuốn Tôm Thịt",
      price: "40,000 VND",
      image: "https://i.imgur.com/JFHjdNr.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DANH SÁCH MÓN ĂN"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodItem(food: foods[index]);
        },
      ),
    );
  }
}