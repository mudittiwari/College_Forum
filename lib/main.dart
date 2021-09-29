import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/homepage.dart';
import 'package:college_project_forum/loginpage.dart';
import 'package:college_project_forum/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'contactus.dart';
import 'header_footer.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      title: "Forum",
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), mainfunction);
  }

  void mainfunction() async {
    showLoaderDialog(context);
    if (FirebaseAuth.instance.currentUser == null) {
      Navigator.pop(context);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginpage()));
    } else {
      var userdata;
      await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
          .get()
          .then((value) {
        userdata = value.docs.first;
      });
      Navigator.pop(context);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  home(FirebaseAuth.instance.currentUser, userdata)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff94E5FF)),
                  child: Center(
                    child: Text("LOGO"),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  "FORUM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
