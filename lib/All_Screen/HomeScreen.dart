import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nagad/itemavatarlist/icons.dart';

import '../widget/CustomApbar.dart';
import '../widget/mainitems.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        toolbarHeight: 0,
          elevation: 0,
          backgroundColor: const Color(0xffFD7E49)),
      bottomNavigationBar: const bottonNav(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const myHomeHeaders(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  MYMAinAllMenu(title: 'Services', itemcount: myicons.allcataimge.length, allimg: myicons.allcataimge,),
                  MYMAinAllMenu(title: 'Payments', itemcount: myicons.payment.length, allimg: myicons.payment,),
                  SliverToBoxAdapter(child: SizedBox(
                    height: 140,
                      child: Image.asset("assets/tamim.png"))),

                  MYMAinAllMenu(title: "Others", itemcount: 4, allimg: [],)
                  // Add more slivers as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class bottonNav extends StatelessWidget {
  const bottonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xffFD7E49),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/miningt.png',height: 20,width: 30),label: "Home"),
          BottomNavigationBarItem(icon: Image.asset('assets/trx.png',height: 20,width: 30),label: "Transactions"),
          BottomNavigationBarItem(icon: Image.asset('assets/Group.png',height: 20,width: 30),label: 'People'),
          BottomNavigationBarItem(icon: Image.asset('assets/mnmenu.png',height: 20,width: 30),label: "My Nagad"),
        ]);
  }
}


