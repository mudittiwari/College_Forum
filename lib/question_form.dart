import 'package:flutter/material.dart';

class question_form extends StatefulWidget {
  const question_form({Key? key}) : super(key: key);

  @override
  _question_formState createState() => _question_formState();
}

class _question_formState extends State<question_form> {
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
                  decoration: InputDecoration(
                    hintText: "title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration(hintText: "Question"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {},
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
