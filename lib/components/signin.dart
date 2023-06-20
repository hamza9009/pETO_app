import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:slidable_button/slidable_button.dart';
import 'routes.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color.fromRGBO(244, 90, 3, 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/group.png",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "pETO",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(250, 221, 201, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Icon(Icons.person_rounded),
                        Text(
                          "Login Client",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 221, 201, 1),
                              )),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: "Username/email/phone",
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 221, 201, 1),
                              )),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromRGBO(244, 90, 3, 1)),
                          child: Center(child: SlideLogin()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Slide to Login",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlideLogin extends StatelessWidget {
  const SlideLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return HorizontalSlidableButton(
      width: MediaQuery.of(context).size.width / 2,
      buttonWidth: 40.0,
      color: Color.fromRGBO(244, 90, 3, 1),
      dismissible: false,
      label: Center(child: Image.asset("assets/images/group.png")),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text('Left'),
        //     Text('Right'),
        //   ],
        // ),
      ),
      onChanged: (position) {
        Navigator.push(context, CupertinoPageRoute(builder: (context) => Routes()));
        // Do the stuff to login authentication
      },
    );
  }
}