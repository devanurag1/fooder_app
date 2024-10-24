import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fooder/pages/home_screen.dart';
import 'package:fooder/pages/order.dart';
import 'package:fooder/pages/profile.dart';
import 'package:fooder/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currenttabindex = 0;

  late List<Widget> pages;
  late Widget Currentpage;
  late Order order;
  late Profile profile;
  late Wallet wallet;
  late HomeScreen home;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    home = HomeScreen();
    pages = [home, order, wallet, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currenttabindex = index;
            });
          },
          items: [
            Icon(Icons.home_outlined, color: Colors.white),
            Icon(Icons.shopping_bag_outlined, color: Colors.white),
            Icon(Icons.wallet_outlined, color: Colors.white),
            Icon(Icons.person_outline, color: Colors.white),
          ]),
      body: pages[currenttabindex],
    );
  }
}
