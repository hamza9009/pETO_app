import "package:flutter/material.dart";

// import 'bottombar.dart';

class Funnel extends StatelessWidget {
  const Funnel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(60.0),
      //     child: CustomBar()),
      body: FunnelScreen(),
      // bottomNavigationBar: Bottombar(),
    );
  }
}
class FunnelScreen extends StatelessWidget {
  const FunnelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(

        children: [
          Container(
            margin: const EdgeInsets.only( top: 40.0),
            height: 300,
            // color: Colors.red,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 100,),
                 Image.asset("assets/images/funnel.png",height: 300,),
                // Text('ndjcnenencencernrenernnr'),
                Expanded(child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Expanded(child: Text('Leads')),
                    Expanded(child: Text('Prospects')),
                    Expanded(child: Text('Clients'),),
                    SizedBox(height: 20,),
                  ],
                ),
                ),

              ],


            ),
          ),
          Text('Lead Target inspec',style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),),
        ],

      ),
    );
  }
}
