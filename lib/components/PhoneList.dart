import 'dart:convert';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class PhoneList extends StatelessWidget {
  const PhoneList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      // preferredSize: Size.fromHeight(60.0),
      // child: CustomBar()),s
      body: ownlist(),
      // bottomNavigationBar: Bottombar(),
    );
  }
}

class ownlist extends StatefulWidget {
  const ownlist({Key? key}) : super(key: key);

  @override
  State<ownlist> createState() => _ownlistState();
}

class _ownlistState extends State<ownlist> {
  List<clientinfo> clientlist = [];
  bool _display = true;
  

//   Future<void> _launchUrl(number) async {
//    var _url = Uri.parse('${number}');
//   if (!await launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }


  Future<List<clientinfo>> getclients() async {
    final response =
        await http.get(Uri.parse('https://jillionet.com/v1/users/'));
    var data = jsonDecode(response.body.toString());
    
    if (response.statusCode == 200) {
      for (Map i in data) {
        clientinfo info = clientinfo(
            email: i['email'],
            first_name: i['first_name'],
            phone_number: i['phone_number'],
            username: i['username']);
        clientlist.add(info);
      }
     
      return clientlist;
      
    } else {
      return clientlist;
    }
    
  }

  @override
  Widget build(BuildContext context) {
  
      return  FutureBuilder(
          future: getclients(),
          builder: (context, AsyncSnapshot<List<clientinfo>> snapshot)
          {
          if (snapshot.connectionState == ConnectionState.done) {
            return (ListView.builder(
                itemCount: clientlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: IconButton(
                      iconSize: 30,
                      icon:Icon(
                        Icons.phone_callback_rounded,
                        color: Colors.black,
                      ), onPressed: () { 
                        // onPressed: _launchUrl({snapshot.data![index].phone_number});
                       },
                    ),
                    trailing: Icon(
                      Icons.person_rounded,
                      color: Colors.black,
                    ),
                    title: Text(snapshot.data![index].username.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${snapshot.data![index].first_name.toString()}',
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            'Email: ${snapshot.data![index].email.toString()}',
                            style: TextStyle(fontSize: 11),
                          )
                        ]),
                  );
                }));
          }
        
      return Container(child: SpinKitCircle(
        itemBuilder: (BuildContext context, int index) {
          
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven
                  ? Color.fromARGB(255, 226, 5, 5)
                  : Color.fromARGB(255, 221, 70, 10),
            ),
          );
          
        },
        
      ));
      
          }
          
          );
    
      
      //  
  }
  }


// class OwnListItem extends StatelessWidget {
//    OwnListItem({super.key});

// List<clientinfo> clientlist=[];
// Future<List<clientinfo>> getclients() async{
//   final response = await http.get(Uri.parse('https://jillionet.com/v1/users/'));
//   var data = jsonDecode(response.body.toString());

//   if(response.statusCode == 200 ){
//     for(Map i in data){
//       clientinfo info = clientinfo(email: i['email'], first_name: i['first_name'], phone_number: i['phone_number'], username: i['username']);
//     clientlist.add(info);
//     }
//     return clientlist;

//   }
//   else{
//     return clientlist;

//   }
// }

//   @override

//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getclients(),
//       builder: (context,AsyncSnapshot<List<clientinfo>> snapshot) {
//       return ListView.builder(
//           itemCount: clientlist.length,
//           itemBuilder: (BuildContext context, int index) {
//             return  ListTile(
//               leading: Icon(
//                 Icons.phone_callback_rounded,
//                 color: Colors.black,
//               ),
//               trailing: Icon(
//                 Icons.person_rounded,
//                 color: Colors.black,
//               ),
//               title: Text( snapshot.data![index].username.toString(),
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w900,
//                       fontSize: 20,
//                       color: Color.fromARGB(255, 0, 0, 0)
//                   )
//               ),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [Text('Name: ${snapshot.data![index].first_name.toString()}',style: TextStyle(fontSize: 11),),
//                 Text('Email: ${snapshot.data![index].email.toString()}',style: TextStyle(fontSize: 11),)]),

//             );
//           });
//       }
//     );

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
//   }
// }

class clientinfo {
  String? username, first_name, email, phone_number;

  clientinfo(
      {required this.email,
      required this.first_name,
      required this.phone_number,
      required this.username});
}
