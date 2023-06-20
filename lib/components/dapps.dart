import "package:flutter/material.dart";


class Dapps extends StatelessWidget {
  const Dapps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(60.0),
      //     child: CustomBar()),
      body: apps(),
      // bottomNavigationBar: Bottombar(),
    );
  }
}
class apps extends StatelessWidget {
  const apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/carpenter.png"),
            Image.asset("assets/images/ai.png"),
            Image.asset("assets/images/sale.png"),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Image.asset("assets/images/electric.png"),
              Image.asset("assets/images/home.png"),
              Image.asset("assets/images/taxiapp.png"),
            ],


          ),
        ],
      ),
    );
  }
}
