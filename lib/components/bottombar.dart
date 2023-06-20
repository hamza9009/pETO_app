// import 'package:flutter/material.dart';

// class Bottombar extends StatefulWidget {
//   const Bottombar({Key? key}) : super(key: key);

//   @override
//   State<Bottombar> createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   Text(
//   //     'Index 0: Clients',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 1: Funnel',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 2: Apps',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 3: wallet',
//   //     style: optionStyle,
//   //   ),
//   // ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

// // Colors coloor =  HexColor('#f45A03');
//   @override
//   Widget build(BuildContext context) {
//     return
//       // Container(
//     //   decoration:  BoxDecoration(
//     //       // color: Color(0xFFF45A03),
//     //     // border: Border.all(color: Colors.white),
//     //       // borderRadius: BorderRadius.all(Radius.circular(20)),
//     //     borderRadius: BorderRadius.only(
//     //       topRight: Radius.circular(10.0),
//     //       topLeft: Radius.circular(10.0),
//     //     ),
//     //     //   border: Border.all(
//     //     //     width: 5,
//     //     //     color: Colors.red,
//     //     //   ),
//     //   ),
//     //
//     //
//     //   // margin: EdgeInsets.only(left: 20, right: 20),
//     //     //add ClipRRect widget for Round Corner
//     // //     child: ClipRRect(
//     // //     borderRadius: const BorderRadius.only(
//     // //     topRight: Radius.circular(24),
//     // // topLeft: Radius.circular(24),
//     // // ),
//     // child:
//     //   Column(
//     //
//     //     mainAxisSize: MainAxisSize.min,
//     //   children: [
//     //   Row(
//     //
//     //   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //   //   children: [
//     //   //     Container(
//     //   //     // color: Colors.orange.withOpacity(0.5),
//     //   //     child: Icon(Icons.account_balance_wallet_rounded),
//     //   // ),
//     //   //     Container(
//     //   //       child: Icon(Icons.account_balance_wallet_rounded),
//     //   //
//     //   //     ),
//     //   // ],
//     //       ),



//     //
//     //   Container(
//     //    // margin: EdgeInsets.only(left: 16, right: 16),
//     //    decoration: BoxDecoration(
//     //      // border: Border.all(color: Colors.orange),
//     //      color: Colors.amber,
//     //    //   borderRadius: BorderRadius.only(
//     //    //       topLeft: Radius.circular(200), topRight: Radius.circular(200)),
//     //    ),
//     //
//     //       child:
//     //       Column(
//     //         mainAxisSize: MainAxisSize.min,
//     //       children:[
//     //       Row(
//     //
//     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //       children: [
//     //         Container(
//     //         // color: Colors.orange.withOpacity(0.5),
//     //         child: Icon(Icons.account_balance_wallet_rounded),
//     //     ),
//     //         Container(
//     //           child: Icon(Icons.account_balance_wallet_rounded),
//     //
//     //         ),
//     //
//     //     ],
//     //   ),
//     //
//     //    BottomNavigationBar(
//     //             backgroundColor: Color(0xFFF45A03),
//     //      // margin: EdgeInsets.only(left: 16, right: 16),
//     //      type: BottomNavigationBarType.fixed, // Fixed
//     //      // backgroundColor: Colors.black,
//     //
//     //             selectedItemColor: Colors.white,
//     //             unselectedItemColor: Colors.black,
//     //             items: const <BottomNavigationBarItem>[
//     //
//     //               BottomNavigationBarItem(
//     //                 icon: Icon(Icons.group),
//     //                 label: 'Clients',
//     //                 // backgroundColor: Color(0xFFF45A03),
//     //               ),
//     //               BottomNavigationBarItem(
//     //                 icon: Icon(Icons.filter_list_alt),
//     //                 label: 'Funnel',
//     //                 // backgroundColor: Colors.green,
//     //               ),
//     //               BottomNavigationBarItem(
//     //                 icon: Icon(Icons.apps),
//     //                 label: 'Apps',
//     //                 // backgroundColor: Colors.blue,
//     //               ),
//     //               BottomNavigationBarItem(
//     //                 icon: Icon(Icons.account_balance_wallet_rounded),
//     //                 label: 'Wallet',
//     //                 // backgroundColor: Colors.yellow,
//     //               ),
//     //             ],
//     //             currentIndex: _selectedIndex,
//     //             // selectedItemColor: Colors.amber[800],
//     //             onTap: _onItemTapped,
//     //           ),
//     //
//     //
//     //
//     //
//     // ],
//     // ),
//     //   );
//     //
//     //

//     //    BottomAppBar(
//     //      color: Color(0xFFF45A03),
//     // child: Container(
//     // height: 100,
//     // child: Column(
//     // children: <Widget>[
//     // Row(
//     // mainAxisSize: MainAxisSize.max,
//     // // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     // children: <Widget>[
//     // Transform.rotate(
//     //   angle: 200 * 3.14 / 180,
//     //   child: IconButton(
//     //       tooltip: 'share',
//     //   iconSize: 40.0,
//     //   padding: EdgeInsets.only(left: 28.0),
//     //   icon: Icon(Icons.send_sharp),
//     //   onPressed: () {}),
//     // ),
//     // IconButton(
//     //   tooltip: 'money',
//     // iconSize: 50.0,
//     // padding: EdgeInsets.only(left: 28.0),
//     // icon: Icon(Icons.attach_money_rounded),
//     // onPressed: () {},
//     // ),
//     // // IconButton(
//     // // iconSize: 30.0,
//     // // padding: EdgeInsets.only(right: 28.0),
//     // // icon: Icon(Icons.search),
//     // // onPressed: () {},
//     // // ),
//     // ]),
//     // Row(
//     // mainAxisSize: MainAxisSize.max,
//     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     // children: <Widget>[
//     // IconButton(
//     // iconSize: 30.0,
//     // padding: EdgeInsets.only(left: 28.0),
//     //     icon: Icon(Icons.group),
//     //     // label: 'Clients',
//     // onPressed: () {
//     //   Navigator.pushNamed(context,"/list",);

//     // }),
//     // IconButton(
//     //   tooltip: 'Funnel',
//     // iconSize: 30.0,
//     // padding: EdgeInsets.only(left: 28.0),
//     // icon: Icon(Icons.filter_list_alt),
//     // onPressed: () {
//     //   Navigator.pushNamed(context,"/funnel",);
//     // },
//     // ),
//     // IconButton(
//     //   tooltip: 'Apps',
//     // iconSize: 30.0,
//     // padding: EdgeInsets.only(right: 28.0),
//     // icon: Icon(Icons.apps),
//     // onPressed: () {
//     //   Navigator.pushNamed(context,"/dapps",);

//     // },
//     // ),
//     //   IconButton(
//     //     tooltip: 'wallet',
//     //     iconSize: 30.0,
//     //     padding: EdgeInsets.only(right: 28.0),
//     //     icon: Icon(Icons.account_balance_wallet_rounded),
//     //     onPressed: () {},
//     //   ),
//     // ]),
//     // ],
//     // ),
//     // ),
//     // );




//   }
// }
