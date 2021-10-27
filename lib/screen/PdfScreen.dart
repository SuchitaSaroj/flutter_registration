import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
//import 'package:pdf_flutter/pdf_flutter.dart';



class PdfScreen extends StatefulWidget {
  @override
  _PdfScreenState createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  //String uri = 'http://africau.edu/images/default/sample.pdf';
  String url = "http://www.pdf995.com/samples/pdf";
  String pdfasset = "assets/sample.pdf";
  PDFDocument _doc;
  bool _loading;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initPdf();
  }
  _initPdf() async{
    setState(() {
      _loading= true;
    });
    final doc =  await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc=doc;
      _loading = false;
    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
   /* appBar: AppBar(
    backgroundColor: Colors.white,
    title: Row(
    children: [
    Text('Dance Competion',
    style: TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,

    ),
    ),

    ]
    )
    ),*/
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image7.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            title:Row(
                children: [
                  Text('Dance Competition',
                    style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold,),
                  ),
                ]
            ),
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
            ),
          )),

    body: _loading ? Center(child: CircularProgressIndicator(),) :
    PDFViewer(document: _doc,
    indicatorBackground: Colors.red,
    //showIndicator: false,
    ),
    );
  }
}
