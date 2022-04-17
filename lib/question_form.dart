import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_project_forum/basicwidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class question_form extends StatefulWidget {
  final user;
  const question_form(this.user, {Key? key}) : super(key: key);

  @override
  _question_formState createState() => _question_formState();
}

class _question_formState extends State<question_form> {
  TextEditingController question = new TextEditingController();
  TextEditingController title = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Ask Question"),
        centerTitle: true,
        backgroundColor: Color(0xff02B1E9),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: title,
                  decoration: InputDecoration(
                    hintText: "title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: question,
                  maxLines: 10,
                  decoration: InputDecoration(hintText: "Question"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () async {
                    showLoaderDialog(context);
                    await FirebaseFirestore.instance.collection('qna').add({
                      'title': title.text.toString().trim(),
                      'question': question.text.toString().trim(),
                      'user': widget.user["fname"] + " " + widget.user["lname"]
                    });
                    Navigator.pop(context);
                    Fluttertoast.showToast(msg: "submitted");
                  },
                  child: Text("Submit"),
                  color: Color(0xff94E5FF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
