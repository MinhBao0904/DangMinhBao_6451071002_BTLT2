import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                food.image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(food.description),

                  const SizedBox(height: 5),

                  Text(
                    food.price,
                    style: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}