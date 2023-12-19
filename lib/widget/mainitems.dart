import 'package:flutter/material.dart';
import 'package:nagad/itemavatarlist/icons.dart';

class MYMAinAllMenu extends StatelessWidget {
  String title;
  int itemcount;
  List allimg;
  MYMAinAllMenu({super.key, required this.title, required this.itemcount, required this.allimg});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xff6E6E6E))),
            ),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: allimg.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                  mainAxisExtent: 120,mainAxisSpacing:10,crossAxisSpacing: 10,childAspectRatio: 5/2),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image.asset(allimg[index]['img']),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 45,
                          child: Text(allimg[index]['name'].toString(),style: const TextStyle(color: Color(0xff6E6E6E),fontSize: 12),textAlign: TextAlign.center,)),
                    )
                  ],
                );
              },)
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
