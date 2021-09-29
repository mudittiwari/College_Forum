// import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/contactus.dart';
import 'package:college_project_forum/header_footer.dart';
import 'package:college_project_forum/homepagewidgets.dart';
import 'package:college_project_forum/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  final User? user;
  final userdata;
  // const home(this.user);
  const home(this.user, this.userdata, {Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var userdata;
  Color colorone = Color(0xffC5F1FF);
  Color colortwo = Colors.white;
  Color colorthree = Colors.white;
  Color colorfour = Colors.white;
  PageController _pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page == 1) {
        setState(() {
          colortwo = Color(0xffC5F1FF);
          colorone = Colors.white;
          colorthree = Colors.white;
          colorfour = Colors.white;
        });
      } else if (_pageController.page == 0) {
        setState(() {
          colorone = Color(0xffC5F1FF);
          colortwo = Colors.white;
          colorthree = Colors.white;
          colorfour = Colors.white;
        });
      } else if (_pageController.page == 2) {
        setState(() {
          colorthree = Color(0xffC5F1FF);
          colortwo = Colors.white;
          colorone = Colors.white;
          colorfour = Colors.white;
        });
      } else {
        setState(() {
          colorfour = Color(0xffC5F1FF);
          colortwo = Colors.white;
          colorthree = Colors.white;
          colorone = Colors.white;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(userdata['fname']);
    if (MediaQuery.of(context).size.width >= 897) {
      return Scaffold(
        appBar: header(context, widget.user, widget.userdata),
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(content: Text("Press again to exit")),
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: colorone,
                    )),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              color: colorone,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(0);
                                    },
                                    child: Text(
                                      "Notes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colortwo,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(1);
                                    },
                                    child: Text(
                                      "Exams",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colorthree,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(2);
                                    },
                                    child: Text(
                                      "Tech Blogs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colorfour,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(3);
                                    },
                                    child: Text(
                                      "Q&A",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                      ],
                    )),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      pageone(widget.user, widget.userdata),
                      pagetwo(),
                      pagethree(),
                      pagefour(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      // print(widget.user!.displayName);
      return Scaffold(
        // resizeToAvoidBottomInset: false,
        drawer: sidebar(context, widget.user, widget.userdata),
        appBar: AppBar(
          title: Text("appbar"),
          backgroundColor: Color(0xff02B1E9),
        ),
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(content: Text("Press again to exit")),
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: colorone,
                    )),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              color: colorone,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(0);
                                    },
                                    child: Text(
                                      "Notes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colortwo,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(1);
                                    },
                                    child: Text(
                                      "Exams",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colorthree,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(2);
                                    },
                                    child: Text(
                                      "Tech Blogs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                        Expanded(
                          child: Container(
                              color: colorfour,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    onTap: () {
                                      _pageController.jumpToPage(3);
                                    },
                                    child: Text(
                                      "Q&A",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))),
                        ),
                      ],
                    )),
                Expanded(
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      pageone(widget.user, widget.userdata),
                      pagetwo(),
                      pagethree(),
                      pagefour(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
