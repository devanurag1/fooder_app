import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fooder/widget/Appwidget.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                setState(() {});
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "assets/salad2.png",
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Medeterianeon",
                      style: Appwidget.SemiboldTextfieldStyle(),
                    ),
                    Text(
                      "Checeppea salad",
                      style: Appwidget.boldTextfieldStyle(),
                    )
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (num > 1) {
                      --num;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  num.toString(),
                  style: Appwidget.SemiboldTextfieldStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    num++;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "oiuerofiur asjkfha sd df fdoigu arihj a;lijfg klidfhg  odaihj woiug ertiu eroie tadro9tl gijjfg sdl  sad we r9r dif wer sdfj p9we sd welnsefo0  hjldkf wdjs ejw9 sdnksd flsdfj8i iw",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
              maxLines: 3,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: Appwidget.boldTextfieldStyle(),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "30 min",
                  style: Appwidget.boldTextfieldStyle(),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total price",
                      style: Appwidget.boldTextfieldStyle(),
                    ),
                    Text(
                      "\$25",
                      style: Appwidget.SemiboldTextfieldStyle(),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20, top: 10, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
