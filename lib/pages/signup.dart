import 'package:flutter/material.dart';
import 'package:fooder/pages/login.dart';
import 'package:fooder/widget/Appwidget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFff5c30), Color(0xFFe74b1a)])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/logo.png",
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      height: MediaQuery.of(context).size.height / 1.8,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Text(
                            "SignUp",
                            style: Appwidget.SemiboldTextfieldStyle(),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                              decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: Appwidget.SemiboldTextfieldStyle(),
                            prefixIcon: Icon(Icons.person_outline),
                          )),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                              decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: Appwidget.SemiboldTextfieldStyle(),
                            prefixIcon: Icon(Icons.email_outlined),
                          )),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                              decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: Appwidget.SemiboldTextfieldStyle(),
                            prefixIcon: Icon(Icons.password_outlined),
                          )),
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Already have account? Sign in",
                      style: Appwidget.SemiboldTextfieldStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
