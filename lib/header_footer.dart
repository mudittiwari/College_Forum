// import 'dart:js';

import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/contactus.dart';
import 'package:college_project_forum/loginpage.dart';
import 'package:college_project_forum/main.dart';
import 'package:college_project_forum/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

PreferredSizeWidget header(BuildContext context, User? user, final userdata) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Color(0xFF02B1E9),
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("LOGO"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: InkWell(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => home()));
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Home",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homepage(),
                  ));
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signuppage()));
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "About Us",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => contactus(user, userdata)));
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Contact Us",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget footer(BuildContext context) {
  return BottomAppBar(
    child: Container(
      height: 50,
      color: Color(0xFF02B1E9),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image(
                image: AssetImage("assets/images/youtube.png"),
                // color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image(
                image: AssetImage("assets/images/facebook.png"),
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image(
                image: AssetImage("assets/images/instagram.png"),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget sidebar(BuildContext context, User? user, final userdata) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Color(0xff02B1E9)),
          child: Center(
            child: Container(
              height: 80,
              child: Column(
                children: [
                  Icon(Icons.person),
                  Text("Welcome ${userdata["fname"]}")
                ],
              ),
            ),
          ),
        ),
        ListTile(
          title: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => home(user, userdata)));
              },
              child: Text("Home")),
        ),
        ListTile(
          title: Text("About Us"),
        ),
        ListTile(
          title: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => contactus(user, userdata)));
              },
              child: Text("Contact Us")),
        ),
        ListTile(
          title: InkWell(
              onTap: () {
                showLoaderDialog(context);
                FirebaseAuth.instance.signOut();
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: Text("Logout")),
        ),
      ],
    ),
  );
}
