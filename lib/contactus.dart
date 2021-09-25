import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/header_footer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'homepage.dart';

class contactus extends StatefulWidget {
  final User? user;
  final userdata;
  const contactus(this.user, this.userdata, {Key? key}) : super(key: key);

  @override
  _contactusState createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  TextEditingController email = new TextEditingController();
  TextEditingController message = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 897) {
      return Scaffold(
        appBar: header(context, widget.user, widget.userdata),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Color(0xff5F5F5F),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus quam eros auctor habitant pretium ac vitae. Quam urna commodo augue justo porta ridiculus.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Image(image: AssetImage("assets/images/map.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage("assets/images/location.png"),
                              width: 10,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Text(
                                      "355 , Siwana road, Ward No. 16, Khairthal, Alwar (Raj) - 301404")),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage("assets/images/call.png"),
                              width: 10,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("9414215505,   "),
                                  Text("9414215505"),
                                ],
                              )),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.mail,
                                color: Color(0xff02B1E9),
                                size: 38,
                              )),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Text("Support@forum.com")),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "Send Message",
                    style: TextStyle(
                        color: Color(0xff5F5F5F),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextField(
                    maxLines: 7,
                    decoration: InputDecoration(hintText: "Message"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text("Send"),
                    color: Color(0xFF94E5FF),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: footer(context),
      );
    } else {
      return Scaffold(
        drawer: sidebar(context, widget.user, widget.userdata),
        appBar: AppBar(
          title: Text("appbar"),
          backgroundColor: Color(0xff02B1E9),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Color(0xff5F5F5F),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus quam eros auctor habitant pretium ac vitae. Quam urna commodo augue justo porta ridiculus.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      child: Image(image: AssetImage("assets/images/map.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage("assets/images/location.png"),
                              width: 10,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Text(
                                      "355 , Siwana road, Ward No. 16, Khairthal, Alwar (Raj) - 301404")),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage("assets/images/call.png"),
                              width: 10,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("9414215505,   "),
                                  Text("9414215505"),
                                ],
                              )),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.mail,
                                color: Color(0xff02B1E9),
                                size: 38,
                              )),
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                  // color: Colors.black,
                                  child: Text("Support@forum.com")),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "Send Message",
                    style: TextStyle(
                        color: Color(0xff5F5F5F),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    controller: message,
                    maxLines: 7,
                    decoration: InputDecoration(hintText: "Message"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: MaterialButton(
                    onPressed: () async {
                      showLoaderDialog(context);
                      try {
                        await FirebaseFirestore.instance
                            .collection('contact')
                            .add({
                          'email': email.text.toString(),
                          'message': message.text.toString(),
                        }).then((value) {
                          Navigator.pop(context);
                          Fluttertoast.showToast(
                              msg: "Message sent successfully");
                        });
                      } catch (e) {
                        Navigator.pop(context);
                        showerrorDialog(context, e.toString());
                      }
                    },
                    child: Text("Send"),
                    color: Color(0xFF94E5FF),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: footer(context),
      );
    }
  }
}
