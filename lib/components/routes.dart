import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'appbar.dart';
import 'bottombar.dart';
import 'dapps.dart';
import 'funnel.dart';
import 'PhoneList.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
   int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    PhoneList(),
    Funnel(),
    Dapps()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: CustomBar()),
      // body: apps(),
      bottomNavigationBar: BottomAppBar(
         color: Color(0xFFF45A03),
    child: Container(
    height: 100,
    child: Column(
    children: <Widget>[
    Row(
    mainAxisSize: MainAxisSize.max,
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Transform.rotate(
      angle: 200 * 3.14 / 180,
      child: IconButton(
          tooltip: 'share',
      iconSize: 40.0,
      padding: EdgeInsets.only(left: 28.0),
      icon: Icon(Icons.send_sharp),
      onPressed: () {}),
    ),
    IconButton(
      tooltip: 'money',
    iconSize: 50.0,
    padding: EdgeInsets.only(left: 28.0),
    icon: Icon(Icons.attach_money_rounded),
    onPressed: () {
      // _onItemTap(0);
    },
    ),
    // IconButton(
    // iconSize: 30.0,
    // padding: EdgeInsets.only(right: 28.0),
    // icon: Icon(Icons.search),
    // onPressed: () {},
    // ),
    ]),
    Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    IconButton(
    iconSize: 30.0,
    padding: EdgeInsets.only(left: 28.0),
        icon: Icon(Icons.group),
        // label: 'Clients',
    onPressed: () {
     _onItemTap(0);

    }),
    IconButton(
      tooltip: 'Funnel',
    iconSize: 30.0,
    padding: EdgeInsets.only(left: 28.0),
    icon: Icon(Icons.filter_list_alt),
    onPressed: () {
      _onItemTap(1);
    },
    ),
    IconButton(
      tooltip: 'Apps',
    iconSize: 30.0,
    padding: EdgeInsets.only(right: 28.0),
    icon: Icon(Icons.apps),
    onPressed: () {
      _onItemTap(2);

    },
    ),
      IconButton(
        tooltip: 'wallet',
        iconSize: 30.0,
        padding: EdgeInsets.only(right: 28.0),
        icon: Icon(Icons.account_balance_wallet_rounded),
        onPressed: () {},
      ),
    ]),
    ],
    ),
    ),
    ),
    body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}