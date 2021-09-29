import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class showpdf extends StatefulWidget {
  const showpdf({Key? key}) : super(key: key);

  @override
  _showpdfState createState() => _showpdfState();
}

class _showpdfState extends State<showpdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SfPdfViewer.network(
          "https://drive.google.com/uc?export=view&id=1QUTCxth4RinvAcOEN8AzMwAWgyTiI4HG",
        ),
      ),
    );
  }
}
