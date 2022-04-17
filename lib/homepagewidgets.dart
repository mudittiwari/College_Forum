// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/mainwidgets.dart';
import 'package:college_project_forum/select_year.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class pageone extends StatefulWidget {
  final User? user;
  final userdata;
  const pageone(this.user, this.userdata, {Key? key}) : super(key: key);

  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "You can select the branch and download the notes of any semester and any unit.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      print("mudittiwari");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  selectyear(widget.user, widget.userdata)));
                    },
                    child: Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/cs.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Computer Science \n and Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/electrical.png'),
                          width: 200,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Electrical Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/AI.png'),
                          width: 200,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Artificial Intelligence",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/mechanical.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Mechanical Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/civil.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Civil Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/aero.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Aeronautical Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "You can select the branch and download the notes of any semester and any unit.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      // print("mudittiwari");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  selectyear(widget.user, widget.userdata)));
                    },
                    child: Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/cs.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Computer Science \n and Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/electrical.png'),
                          width: 150,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Electrical Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/AI.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Artificial Intelligence",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/mechanical.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Mechanical \n Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/civil.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Civil Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/aero.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Aeronautical \n Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

class pagetwo extends StatefulWidget {
  const pagetwo({Key? key}) : super(key: key);

  @override
  _pagetwoState createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "You can select the branch and download the previous exam papers of any semester and any unit.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/cs.png'),
                          width: 200,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Computer Science \n and Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/electrical.png'),
                          width: 200,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Electrical Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/AI.png'),
                          width: 200,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Artificial Intelligence",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/mechanical.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Mechanical Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/civil.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Civil Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/aero.png'),
                            width: 200,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Aeronautical Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "You can select the branch and download the previous exam papers of any semester and any unit.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/cs.png'),
                          width: 150,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Computer Science \n and Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width * .3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/electrical.png'),
                          width: 150,
                        ),
                        Center(
                            // alignment: Alignment.center,
                            child: Text(
                          "Electrical Engineering",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/AI.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Artificial Intelligence",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/mechanical.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Mechanical \n Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/civil.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Civil Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/aero.png'),
                            width: 150,
                          ),
                          Center(
                              // alignment: Alignment.center,
                              child: Text(
                            "Aeronautical \n Engineering",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

class pagethree extends StatefulWidget {
  const pagethree({Key? key}) : super(key: key);

  @override
  _pagethreeState createState() => _pagethreeState();
}

class _pagethreeState extends State<pagethree> {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  late Future<QuerySnapshot> _getblogs;
  Future<QuerySnapshot> getblogs() {
    print("mudittwari");
    return FirebaseFirestore.instance.collection('blogs').get();
  }

  @override
  void initState() {
    _getblogs = getblogs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search), hintText: "Search"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage("assets/images/blog.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "What makes a great IT consultant – and how you can become one",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted By: Mudit Tiwari       29 July 2021 10:00AM",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "7N is an international freelance agency that has been connecting the best IT consultants with leading organizations around the world for more than 30 years."),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Add a comment",
                                        suffixIcon: Icon(
                                          Icons.send,
                                          // color: Color(0xff02B1E9),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage("assets/images/blog.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "What makes a great IT consultant – and how you can become one",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted By: Mudit Tiwari       29 July 2021 10:00AM",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "7N is an international freelance agency that has been connecting the best IT consultants with leading organizations around the world for more than 30 years."),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Add a comment",
                                        suffixIcon: Icon(
                                          Icons.send,
                                          // color: Color(0xff02B1E9),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage("assets/images/blog.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "What makes a great IT consultant – and how you can become one",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted By: Mudit Tiwari       29 July 2021 10:00AM",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "7N is an international freelance agency that has been connecting the best IT consultants with leading organizations around the world for more than 30 years."),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Add a comment",
                                        suffixIcon: Icon(
                                          Icons.send,
                                          // color: Color(0xff02B1E9),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage("assets/images/blog.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "What makes a great IT consultant – and how you can become one",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted By: Mudit Tiwari       29 July 2021 10:00AM",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "7N is an international freelance agency that has been connecting the best IT consultants with leading organizations around the world for more than 30 years."),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Add a comment",
                                        suffixIcon: Icon(
                                          Icons.send,
                                          // color: Color(0xff02B1E9),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage("assets/images/blog.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "What makes a great IT consultant – and how you can become one",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted By: Mudit Tiwari       29 July 2021 10:00AM",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  "7N is an international freelance agency that has been connecting the best IT consultants with leading organizations around the world for more than 30 years."),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.share,
                                          color: Color(0xff02B1E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Add a comment",
                                        suffixIcon: Icon(
                                          Icons.send,
                                          // color: Color(0xff02B1E9),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return FutureBuilder(
        future: _getblogs,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          else if (snapshot.hasError)
            return Center(
              child: Icon(Icons.error),
            );
          else
            return SingleChildScrollView(
              // clipBehavior: Clip.none,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search), hintText: "Search"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      // height: MediaQuery.of(context).size.height,
                      // color: Colors.red,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        // physics: AlwaysScrollableScrollPhysics(),
                        // physics: const BouncingScrollPhysics(
                        //     parent: AlwaysScrollableScrollPhysics()),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return blogwidget(
                              snapshot.data!.docs.elementAt(index));
                        },
                        itemCount: snapshot.data!.docs.length,
                      ),
                    ),
                  )
                ],
              ),
            );
        },
      );
    }
  }
}

class pagefour extends StatefulWidget {
  final user;
  const pagefour(this.user, {Key? key}) : super(key: key);

  @override
  _pagefourState createState() => _pagefourState();
}

class _pagefourState extends State<pagefour> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search), hintText: "Search"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was used in a web page?"),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page:body {    font-family: Calibri, Trebuchet MS, Helvetica, sans-serif;} How could I detect which one of the defined fonts were used in the user's browser?"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "HTML",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  "CSS",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was used in a web page?"),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page:body {    font-family: Calibri, Trebuchet MS, Helvetica, sans-serif;} How could I detect which one of the defined fonts were used in the user's browser?"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "HTML",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  "CSS",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was used in a web page?"),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page:body {    font-family: Calibri, Trebuchet MS, Helvetica, sans-serif;} How could I detect which one of the defined fonts were used in the user's browser?"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "HTML",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  "CSS",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was used in a web page?"),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page:body {    font-family: Calibri, Trebuchet MS, Helvetica, sans-serif;} How could I detect which one of the defined fonts were used in the user's browser?"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "HTML",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  "CSS",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search), hintText: "Search"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was......",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page........"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "HTML",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    "CSS",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was......",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page........"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "HTML",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    "CSS",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was......",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page........"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "HTML",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    "CSS",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // width: 50,
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  Text(
                                    "Mudit Tiwari",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "20 july 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "10:53 AM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  "How to detect which one of the defined font was......",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Expanded(
                              child: Text(
                                  "Suppose I have the following CSS rule in my page........"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "HTML",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    "CSS",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Votes",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("0 Answers",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "0 Views",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
