import 'package:flutter/material.dart';

class ExpansionMenuView extends StatefulWidget {
  const ExpansionMenuView({super.key});

  @override
  State<ExpansionMenuView> createState() => _ExpansionMenuViewState();
}

class _ExpansionMenuViewState extends State<ExpansionMenuView> {

  final List<Map<String, dynamic>> categories = [

    {
      "title": "Fruits",
      "items": [
        {"name": "Apple", "icon": "🍎"},
        {"name": "Banana", "icon": "🍌"},
        {"name": "Orange", "icon": "🍊"},
      ],
      "expanded": true
    },

    {
      "title": "Vegetables",
      "items": [
        {"name": "Carrot", "icon": "🥕"},
        {"name": "Broccoli", "icon": "🥦"},
      ],
      "expanded": false
    },

    {
      "title": "Drinks",
      "items": [
        {"name": "Water", "icon": "💧"},
        {"name": "Juice", "icon": "🧃"},
      ],
      "expanded": false
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Menu"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Expansion Menu",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                "Using ExpansionPanelList",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 15),

              ExpansionPanelList(
                expansionCallback: (index, isExpanded) {

                  setState(() {
                    categories[index]["expanded"] = !isExpanded;
                  });

                },

                children: categories.map<ExpansionPanel>((category) {

                  return ExpansionPanel(

                    headerBuilder: (context, isExpanded) {

                      return ListTile(
                        title: Text(
                          category["title"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );

                    },

                    body: Column(
                      children: category["items"].map<Widget>((item) {

                        return ListTile(
                          leading: Text(
                            item["icon"],
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(item["name"]),
                        );

                      }).toList(),
                    ),

                    isExpanded: category["expanded"],
                  );

                }).toList(),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "StatefulWidget Management",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}