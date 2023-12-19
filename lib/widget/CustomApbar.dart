import 'package:flutter/material.dart';

class myHomeHeaders extends StatelessWidget {
  const myHomeHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        alignment: Alignment.center,
        height: 200,
        width: double.infinity,
        //color: const Color(0xffFD7E49),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/nagadbc.png"), fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/ball.png',height: 22),
          ),
          Image.asset(
            "assets/nagadhead.png",
            height: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "MN NAHID",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset("assets/miningt.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "Tap for Balance",
                  style: TextStyle(
                      color: Color(0xffFD7E49), fontWeight: FontWeight.bold),
                ),
              )
            ]),
          )
        ]),
      )
    ]);
  }
}
