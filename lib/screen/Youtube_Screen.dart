import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';


class LaunchUrl extends StatefulWidget {


  @override
  _LaunchUrlState createState() => _LaunchUrlState();
}

class _LaunchUrlState extends State<LaunchUrl> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       body: Container(
         alignment: Alignment.center,
         padding: EdgeInsets.all(32),
         child: ElevatedButton(
           child: Text('Open Player Store'),
           //child: Text('Open $storeName'),
           onPressed: (){
             StoreRedirect.redirect(
               androidAppId: 'com.instagram.android',
               iOSAppId: '389801252',
             );

           },
         ),
       ),
    );
  }
}
