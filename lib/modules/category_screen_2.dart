import 'package:flutter/material.dart';

import 'category_screen.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'name': 'Fashion'},
      {'name': 'Beaty'},
      {'name': 'Electronics'},
      {'name': 'Jewelarry'},
      {'name': 'Footwear'},
      {'name': 'Toys'},
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const CategoryPage(),
                        ),
                      );
                    },
                    child: Text('Categories'),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 5),
                      Icon(Icons.heart_broken),
                      SizedBox(width: 5),
                      Icon(Icons.car_crash),
                      SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.grey, thickness: 2),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  padding: EdgeInsets.all(10),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: List.generate(
                    items.length,
                    (index) => _buildItem(items[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItem(Map<String, dynamic> item) {
    return Container(
      width: double.infinity / 2 - 25,
      color: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(item['name']),
        ],
      ),
    );
  }
}
