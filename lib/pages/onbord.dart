import 'package:flutter/material.dart';
import 'package:fooder/pages/signup.dart';
import 'package:fooder/widget/Appwidget.dart';
import 'package:fooder/widget/content_model.dart';

class Onbord extends StatefulWidget {
  const Onbord({super.key});

  @override
  State<Onbord> createState() => _OnbordState();
}

class _OnbordState extends State<Onbord> {
  int currentindex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: content.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          content[i].image,
                          height: 450,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          content[i].title,
                          style: Appwidget.SemiboldTextfieldStyle(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          content[i].description,
                          style: Appwidget.LightTextfieldStyle(),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    content.length, (index) => buildDot(index, context))),
          ),
          GestureDetector(
            onTap: () {
              if (currentindex == content.length - 1) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              }

              _controller.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
            child: Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(19)),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 20,
      width: currentindex == index ? 20 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.black),
    );
  }
}
