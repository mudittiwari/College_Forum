import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:college_project_forum/showblog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class blogwidget extends StatefulWidget {
  final doc;
  const blogwidget(this.doc, {Key? key}) : super(key: key);

  @override
  _blogwidgetState createState() => _blogwidgetState();
}

class _blogwidgetState extends State<blogwidget> {
  TextEditingController comment = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => showblog(widget.doc)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width * .9,
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
                          child: Image.network(
                            widget.doc["content"][0]["imagelink"],
                            fit: BoxFit.fitWidth,
                          )),
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
                                    '${widget.doc["title"].toString().substring(0, 40)}.....',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Posted By: ${widget.doc["author"]}\nDate: ${widget.doc["date"]}',
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            '${widget.doc["content"][0]["content"].toString().substring(0, 40)}..........'),
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
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xff02B1E9),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
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
                              // autofocus: true,
                              controller: comment,
                              decoration: InputDecoration(
                                  hintText: "Add a comment",
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      try {
                                        var id;
                                        showLoaderDialog(context);
                                        await FirebaseFirestore.instance
                                            .collection('blogs')
                                            .where('uid',
                                                isEqualTo: widget.doc["uid"])
                                            .get()
                                            .then((value) {
                                          id = value.docs.first.id;
                                        });
                                        Map mp = new Map();
                                        var username;
                                        await FirebaseFirestore.instance
                                            .collection('users')
                                            .where('email',
                                                isEqualTo: FirebaseAuth
                                                    .instance.currentUser!.email
                                                    .toString())
                                            .get()
                                            .then((value) {
                                          username = value.docs.first["fname"] +
                                              " " +
                                              value.docs.first["lname"];
                                        });
                                        mp['user'] = username;
                                        mp['comment'] = comment.text.toString();
                                        mp['replies'] = [];

                                        await FirebaseFirestore.instance
                                            .collection("blogs")
                                            .doc(id)
                                            .update({
                                          'comments':
                                              FieldValue.arrayUnion([mp]),
                                        });
                                        Navigator.pop(context);
                                        Fluttertoast.showToast(
                                            msg: "Comment added");
                                      } catch (e) {
                                        Navigator.pop(context);
                                        showerrorDialog(context, e.toString());
                                      }
                                    },
                                    child: Icon(
                                      Icons.send,
                                      // color: Color(0xff02B1E9),
                                    ),
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
    );
  }
}
