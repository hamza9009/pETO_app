import "package:flutter/material.dart";
import 'appbar.dart';
import 'bottombar.dart';

class PhoneList extends StatelessWidget {
  const PhoneList({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: CustomBar()),
      body: OwnListItem(),
      bottomNavigationBar: Bottombar(),
    );
  }
}

class OwnListItem extends StatelessWidget {
  const OwnListItem({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return  ListTile(
            leading: Icon(
              Icons.phone_callback_rounded,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
            title: Text('Marcos Guitierrez $index',
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0)
                )
            ),
          );
        });

    // Container(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Image.asset("assets/images/iconphonecall.png",
    //       height: 50,
    //       width: 50),
    //       Text(
    //         "Marcos Guitierrez",
    //         style: TextStyle(
    //           fontWeight:FontWeight.w900,
    //           fontSize: 20,
    //           color: Color.fromARGB(255, 0, 0, 0)
    //         ),
    //       ),
    //       Image.asset("assets/images/User_circle.png",
    //       height: 50,
    //       width: 50,)
    //     ],
    //   ),
    // );
  }
}