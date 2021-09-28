// import 'dart:html';

// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class showblog extends StatefulWidget {
  final doc;
  const showblog(this.doc, {Key? key}) : super(key: key);

  @override
  _showblogState createState() => _showblogState();
}

class _showblogState extends State<showblog> {
  TextEditingController comment = new TextEditingController();
  TextEditingController commentreply = new TextEditingController();
  List<TextEditingController> lst = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
        centerTitle: true,
        backgroundColor: Color(0xff02B1E9),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                "Posted By: ${widget.doc['author'].toString()}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff02B1E9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Date: ${widget.doc['date'].toString()}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff02B1E9),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEAFAFF),
                    border: Border.all(color: Color(0xff02B1E9)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "${widget.doc['title'].toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Text(widget.doc['content'][index]
                                        ['content']),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          image: NetworkImage(
                                              widget.doc['content'][index]
                                                  ['imagelink'])),
                                    )
                                  ],
                                );
                              },
                              itemCount: widget.doc['content'].length,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: TextField(
                                    controller: comment,
                                    decoration: InputDecoration(
                                        hintText: "Add Comment",
                                        suffixIcon: InkWell(
                                            onTap: () async {
                                              try {
                                                var id;
                                                showLoaderDialog(context);
                                                await FirebaseFirestore.instance
                                                    .collection('blogs')
                                                    .where('uid',
                                                        isEqualTo:
                                                            widget.doc["uid"])
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
                                                            .instance
                                                            .currentUser!
                                                            .email
                                                            .toString())
                                                    .get()
                                                    .then((value) {
                                                  username = value
                                                          .docs.first["fname"] +
                                                      " " +
                                                      value.docs.first["lname"];
                                                });
                                                mp['user'] = username;
                                                mp['comment'] =
                                                    comment.text.toString();
                                                mp['replies'] = [];

                                                await FirebaseFirestore.instance
                                                    .collection("blogs")
                                                    .doc(id)
                                                    .update({
                                                  'comments':
                                                      FieldValue.arrayUnion(
                                                          [mp]),
                                                });
                                                Navigator.pop(context);
                                                Fluttertoast.showToast(
                                                    msg: "Comment added");
                                              } catch (e) {
                                                Navigator.pop(context);
                                                showerrorDialog(
                                                    context, e.toString());
                                              }
                                            },
                                            child: Icon(Icons.send))),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Comments",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            child: StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection('blogs')
                                    .where('uid', isEqualTo: widget.doc['uid'])
                                    .snapshots(),
                                builder: (context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  // print(snapshot.data!.docs.first["comments"]);
                                  if (snapshot.hasData) {
                                    lst.clear();
                                    for (int i = 0;
                                        i <
                                            snapshot.data!.docs
                                                .first["comments"].length;
                                        i++) lst.add(TextEditingController());
                                    return ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18.0),
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  snapshot.data!.docs
                                                          .first["comments"]
                                                      [index]["user"],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0),
                                                  child: Text(snapshot
                                                          .data!
                                                          .docs
                                                          .first["comments"]
                                                      [index]["comment"]),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 8.0),
                                                  child: Center(
                                                    child: Text(
                                                      "Replies",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 14.0),
                                                  child: Container(
                                                    child: ListView.builder(
                                                      shrinkWrap: true,
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      itemBuilder:
                                                          (context, i) {
                                                        return Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .symmetric(
                                                                      vertical:
                                                                          8.0),
                                                              child: Text(
                                                                  snapshot
                                                                          .data!
                                                                          .docs
                                                                          .first["comments"][index]["replies"][i]
                                                                      ["user"],
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16)),
                                                            ),
                                                            Text(snapshot
                                                                        .data!
                                                                        .docs
                                                                        .first["comments"]
                                                                    [
                                                                    index]["replies"]
                                                                [i]["reply"]),
                                                          ],
                                                        );
                                                      },
                                                      itemCount: snapshot
                                                          .data!
                                                          .docs
                                                          .first["comments"]
                                                              [index]["replies"]
                                                          .length,
                                                    ),
                                                  ),
                                                ),
                                                TextField(
                                                  controller: lst[index],
                                                  decoration: InputDecoration(
                                                      hintText: "Reply",
                                                      suffixIcon: InkWell(
                                                          onTap: () async {
                                                            showLoaderDialog(
                                                                context);
                                                            var id;
                                                            List comments = [];
                                                            await FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                    'blogs')
                                                                .where('uid',
                                                                    isEqualTo:
                                                                        widget.doc[
                                                                            'uid'])
                                                                .get()
                                                                .then((value) {
                                                              id = value.docs
                                                                  .first.id;
                                                              comments = value
                                                                      .docs
                                                                      .first[
                                                                  "comments"];
                                                            });
                                                            Map mp = {};

                                                            for (var item
                                                                in comments) {
                                                              if (item[
                                                                      "comment"] ==
                                                                  snapshot
                                                                          .data!
                                                                          .docs
                                                                          .first["comments"][index]
                                                                      [
                                                                      "comment"]) {
                                                                mp = item;
                                                                var username;
                                                                await FirebaseFirestore
                                                                    .instance
                                                                    .collection(
                                                                        'users')
                                                                    .where(
                                                                        'email',
                                                                        isEqualTo: FirebaseAuth
                                                                            .instance
                                                                            .currentUser!
                                                                            .email
                                                                            .toString())
                                                                    .get()
                                                                    .then(
                                                                        (value) {
                                                                  username = value
                                                                              .docs
                                                                              .first[
                                                                          "fname"] +
                                                                      " " +
                                                                      value.docs
                                                                              .first[
                                                                          "lname"];
                                                                });
                                                                mp["replies"]
                                                                    .add({
                                                                  "user":
                                                                      username,
                                                                  "reply": lst[
                                                                          index]
                                                                      .text
                                                                      .toString()
                                                                });
                                                              }
                                                            }
                                                            await FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                    'blogs')
                                                                .doc(id)
                                                                .update({
                                                              'comments':
                                                                  comments,
                                                            }).then((value) {
                                                              Navigator.pop(
                                                                  context);
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "reply added");
                                                            });
                                                          },
                                                          child: Icon(
                                                              Icons.send))),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 20,
                                                      horizontal: 48.0),
                                                  child: Divider(
                                                    thickness: 0.2,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: snapshot
                                          .data!.docs.first["comments"].length,
                                    );
                                  } else
                                    return Icon(Icons.error);
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
