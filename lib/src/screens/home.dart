import 'package:flutter/material.dart';
import '../widgets/commons.dart';
import '../widgets/title.dart';
import '../widgets/categories.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              //to separate elements in row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What are you looking for?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 4)
              ]),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: red,
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "find food and restaurent",
                      border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: red,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                size: 20,
                colors: grey,
              ),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 240,
                        width: 200,
                        decoration: BoxDecoration(color: white, boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(1, 1),
                              blurRadius: 4)
                        ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/Food2.png",
                              height: 110,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: CustomText(
                                      text: "Some food",
                                      size: 16,
                                    )),
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
                                      child: Icon(
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
                                        text: "4.7",
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
                                    text: "\$12.99",
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
                  }),
            )
          ],
        ),
      ),
    );
  }
}
