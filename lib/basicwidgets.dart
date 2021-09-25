import 'package:flutter/material.dart';

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: new Row(
      children: [
        CircularProgressIndicator(),
        Container(margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showerrorDialog(BuildContext context, String error) {
  AlertDialog alert = AlertDialog(
    title: Text(
      "ERROR",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: new Row(
      children: [
        Flexible(
            child: Container(
                margin: EdgeInsets.only(left: 7), child: Text(error))),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
