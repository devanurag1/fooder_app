import 'package:flutter/material.dart';
import 'package:fooder/pages/details.dart';
import 'package:fooder/widget/Appwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool icecream = false;
  bool pizza = false;
  bool salad = false;
  bool burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Anurag",
                  style: Appwidget.boldTextfieldStyle(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Delicious Food",
              style: Appwidget.HeadlubeTextfieldStyle(),
            ),
            Text(
              "Discover and Get Great Food",
              style: Appwidget.LightTextfieldStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(margin: EdgeInsets.only(right: 20), child: showitem()),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Veggie Taco Hash",
                                style: Appwidget.boldTextfieldStyle(),
                              ),
                              Text(
                                "fresh and healty",
                                style: Appwidget.SemiboldTextfieldStyle(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$25",
                                style: Appwidget.SemiboldTextfieldStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(18),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: Appwidget.boldTextfieldStyle(),
                            ),
                            Text(
                              "fresh and healty",
                              style: Appwidget.SemiboldTextfieldStyle(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$25",
                              style: Appwidget.SemiboldTextfieldStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadiusDirectional.circular(10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Mediterranean Chickpea Salad",
                              style: Appwidget.boldTextfieldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "Honey goot cheese",
                              style: Appwidget.LightTextfieldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$25",
                              style: Appwidget.LightTextfieldStyle(),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/salad.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/burger.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
