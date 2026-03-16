import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';
import '../widgets/dashboard_card.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final List<DashboardItem> items = [

    DashboardItem(
      title: "Profile",
      icon: Icons.person,
    ),

    DashboardItem(
      title: "Messages",
      icon: Icons.message,
    ),

    DashboardItem(
      title: "Settings",
      icon: Icons.settings,
    ),

    DashboardItem(
      title: "Notifications",
      icon: Icons.notifications,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: GridView.count(
          crossAxisCount: 2,   // 2 cột
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,

          children: items.map((item) {

            return DashboardCard(item: item);

          }).toList(),
        ),
      ),
    );
  }
}