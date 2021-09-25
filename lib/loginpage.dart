import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/main.dart';
import 'package:college_project_forum/signup.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'contactus.dart';
import 'header_footer.dart';
import 'homepage.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
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
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      width: 400,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text("data"),
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
                                  builder: (context) => signuppage()));
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20,
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
          bottomNavigationBar: footer(context));
    } else {
      return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("appbar"),
            backgroundColor: Color(0xff02B1E9),
          ),
          body: DoubleBackToCloseApp(
            snackBar: SnackBar(content: Text("Press again to exit")),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width * .8,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: InkWell(
                              hoverColor: Colors.transparent,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: MaterialButton(
                          onPressed: () async {
                            showLoaderDialog(context);
                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: email.text.toString().trim(),
                                      password: password.text.toString().trim())
                                  .then((value) async {
                                if (FirebaseAuth.instance.currentUser != null) {
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
                                }
                              });
                            } catch (e) {
                              Navigator.pop(context);
                              showerrorDialog(context, e.toString());
                            }
                          },
                          child: Text("Login"),
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
                                    builder: (context) => signuppage()));
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Create Account",
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
          ),
          bottomNavigationBar: footer(context));
    }
  }
}
