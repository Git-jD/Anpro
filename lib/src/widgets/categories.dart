import 'package:flutter/material.dart';
import '../models/category.dart';
import 'commons.dart';
import 'title.dart';

List<Category> categoriesList = [Category(name: "Salad", image: "Food1.jpg")];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(4, 6),
                        blurRadius: 12)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "${categoriesList[index].name}",
                  size: 14,
                  colors: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}