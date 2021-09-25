// import 'dart:html';
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/loginpage.dart';
import 'package:college_project_forum/main.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:college_project_forum/header_footer.dart';
import 'package:flutter/material.dart';

import 'contactus.dart';
import 'homepage.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("appbar"),
            backgroundColor: Color(0xff02B1E9),
          ),
          body: DoubleBackToCloseApp(
            snackBar: SnackBar(
              content: Text("Press again to exit"),
              backgroundColor: Colors.blue[200],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Align(
                      child: Text("LOGO"),
                      alignment: Alignment.center,
                    ),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF94E5FF),
                    ),
                  ),
                  Container(
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 190,
                          child: TextField(
                            decoration: InputDecoration(hintText: "First Name"),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: TextField(
                            decoration: InputDecoration(hintText: "Last Name"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
                      color: Color(0xFF94E5FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: footer(context));
    } else {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("appbar"),
          backgroundColor: Color(0xff02B1E9),
        ),
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(
            content: Text("Press again to exit"),
            backgroundColor: Colors.blue[200],
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Align(
                      child: Text("LOGO"),
                      alignment: Alignment.center,
                    ),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF94E5FF),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      controller: firstname,
                      decoration: InputDecoration(hintText: "First Name"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      controller: lastname,
                      decoration: InputDecoration(hintText: "last Name"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      controller: confirmpassword,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: MaterialButton(
                      onPressed: () async {
                        showLoaderDialog(context);
                        try {
                          await _auth
                              .createUserWithEmailAndPassword(
                                  email: email.text.toString().trim(),
                                  password: password.text.toString().trim())
                              .then((value) async {
                            FirebaseFirestore.instance.collection('users').add({
                              'fname': firstname.text.toString().trim(),
                              'lname': lastname.text.toString().trim(),
                              'email': email.text.toString().trim()
                            });
                            var userdata;
                            await FirebaseFirestore.instance
                                .collection('users')
                                .where('email',
                                    isEqualTo: FirebaseAuth
                                        .instance.currentUser!.email)
                                .get()
                                .then((value) {
                              userdata = value.docs.first;
                            });
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home(
                                        FirebaseAuth.instance.currentUser,
                                        userdata)));
                            return null;
                          });
                        } catch (e) {
                          Navigator.pop(context);
                          showerrorDialog(context, e.toString());
                        }
                      },
                      child: Text("Sign Up"),
                      color: Color(0xFF94E5FF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginpage()));
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: footer(context),
      );
    }
  }
}
