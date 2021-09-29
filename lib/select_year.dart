import 'package:college_project_forum/header_footer.dart';
import 'package:college_project_forum/selectsubject.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class selectyear extends StatefulWidget {
  final User? user;
  final userdata;
  const selectyear(this.user, this.userdata, {Key? key}) : super(key: key);

  @override
  _selectyearState createState() => _selectyearState();
}

class _selectyearState extends State<selectyear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: sidebar(context, widget.user, widget.userdata),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Select Year"),
        backgroundColor: Color(0xff02B1E9),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => selectsubject(),
                            ));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: MediaQuery.of(context).size.width * .4,
                        color: Color(0xffC5F1FF),
                        child: Center(
                          child: Text("1 Year"),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.width * .4,
                      color: Color(0xffC5F1FF),
                      child: Center(
                        child: Text("2 Year"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.width * .4,
                      color: Color(0xffC5F1FF),
                      child: Center(
                        child: Text("3 Year"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.width * .4,
                      color: Color(0xffC5F1FF),
                      child: Center(
                        child: Text("4 Year"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
