import 'package:college_project_forum/showpdf.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

// import 'flutter';
class selectunit extends StatefulWidget {
  const selectunit({Key? key}) : super(key: key);

  @override
  _selectunitState createState() => _selectunitState();
}

class _selectunitState extends State<selectunit> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Select unit"),
        backgroundColor: Color(0xff02B1E9),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => showpdf()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Unit 1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                    color: Color(0xffC5F1FF),
                    height: 40,
                    width: MediaQuery.of(context).size.width * .8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 3",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 4",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Unit 7",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                  color: Color(0xffC5F1FF),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
