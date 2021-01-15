import 'package:flutter/material.dart';
import '../widgets/commons.dart';
import '../widgets/title.dart';
import 'product.dart';

List<Product> productsList = [
  Product(
      name: "Cereal",
      price: 5.99,
      rating: 4.5,
      vendor: "GoodFood",
      wishList: true,
      image: "Food7.jpg"),
  Product(
      name: "Cereal",
      price: 5.99,
      rating: 4.5,
      vendor: "GoodFood",
      wishList: true,
      image: "Food7.jpg"),
  Product(
      name: "Cereal",
      price: 5.99,
      rating: 4.5,
      vendor: "GoodFood",
      wishList: true,
      image: "Food7.jpg")
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 240,
              width: 200,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: Colors.red[50],
                    offset: Offset(15, 5),
                    blurRadius: 30)
              ]),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/${productsList[index].image}",
                    height: 110,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomText(
                          text: "${productsList[index].name}",
                          size: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(1, 1),
                                    blurRadius: 4)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: productsList[index].wishList
                                ? Icon(
                                    Icons.favorite,
                                    size: 18,
                                    color: red,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                    color: red,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: CustomText(
                              text: "${productsList[index].rating.toString()}",
                              colors: grey,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: CustomText(
                          text: "\$${productsList[index].price}",
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
