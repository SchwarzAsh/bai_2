import 'package:bai_2/modules/category_screen_2.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const CategoryPage2(),
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
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        children: List.generate(
                          8,
                          (index) => _buildListCategory(Icons.star, 'Fashion'),
                        ),
                      ),
                      const VerticalDivider(color: Colors.red, thickness: 2),
                      Expanded(
                          child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: List.generate(
                          5,
                          (index) => _buildItem(),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListCategory(IconData icon, String category) {
    return Container(
      width: 80,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(category),
        ],
      ),
    );
  }

  Widget _buildItem() {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.network(
                'https://fptshop.com.vn/Uploads/Originals/2023/2/2/638109598049506720_hp-pavilion-14-dv-bac-2023-dd.jpg'),
          ),
          Text('Laptop'),
        ],
      ),
    );
  }
}
