import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color:  Color(0xfff45a03),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

    appBar: AppBar(

    backgroundColor: Color(0xFFF45A03)  ,
    iconTheme: IconThemeData(color: HexColor('#000000') ),

    centerTitle: true,
    title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
    Image.asset('assets/images/petoicon.png',
    scale: 2.0,
    height: 70,
    width: 50,),
    Text('peto',
    style: TextStyle(color: HexColor('#000000')),),
    ],
    ),
    //
    // title: const Text('Peto',
    // style: TextStyle(fontSize: 40,
    // color: Colors.black,
    // ),
    // ),



    actions: <Widget>[
    IconButton(
    color: Colors.black,
    icon: Icon(Icons.search),
    onPressed: () {
    // Perform search action
    },
    ),

    ],
    ),
    );
  }
}
