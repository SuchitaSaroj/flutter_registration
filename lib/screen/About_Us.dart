
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

));


class AboutUs extends StatefulWidget {


  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {




  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        /*appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
                children: [
                  Text('Dance Competition',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                ]
            ),
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
      url: "https:/google.com",
      withZoom: true,
    );
  }
}
