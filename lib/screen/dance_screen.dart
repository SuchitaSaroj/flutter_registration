import 'package:carousel_slider/carousel_slider.dart';
import 'package:dance/screen/FormScreen.dart';
import 'package:dance/screen/QuizApp.dart';
import 'package:flutter/widgets.dart';
import 'package:dance/screen/About_Us.dart';
import 'package:dance/screen/PdfScreen.dart';
import 'package:dance/screen/VideoScreen.dart';
import 'package:flutter/material.dart';

import 'Youtube_Screen.dart';

class DanceScreen extends StatefulWidget {

  @override
  _DanceScreenState createState() => _DanceScreenState();
}

class _DanceScreenState extends State<DanceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.dehaze_rounded),
            iconSize: 25.0,
            color: Colors.black,

            onPressed: () {},
          ),
        backgroundColor: Colors.orangeAccent,
        title: Row(
          children: [
          Text('Dance Competion',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),
        ),
             SizedBox(
               width: 60,
             ),
             IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 25.0,
              color: Colors.black,

              onPressed: () {},
            ),

        ]
      )
      ),

      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/image7.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        //color: Colors.cyanAccent,
        child: ListView(
            children: [
        CarouselSlider(
          height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16/9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
            items: [
        Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("images/image1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("images/image2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("images/image3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("images/image4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

      ]
    ),

              GridView.count(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(25),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Row(children: [

                            Column(children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text('       Google Chrome'),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.black12,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.search),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  AboutUs()),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )

                            ]
                           )
                          ],
                          ),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('          Register Now'),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.edit),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  FormScreen()),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],)
                          ],
                          ),
                        )

                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('         PDF Reader '),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.orange,


                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.picture_as_pdf),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  PdfScreen()),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],)
                          ],
                          ),
                        )

                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('        YouTube Video'),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.red,


                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.video_library),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  VideoScreen(url: 'https://youtu.be/f16WPMfv-gM', )),
                                     // MaterialPageRoute(builder: (context) =>  VideoScreen(url: 'https://youtu.be/8x6CjD6Iyu8', )),
                                     // MaterialPageRoute(builder: (context) =>  VideoScreen(url: 'https://https://youtu.be/tionpZAVPd4', )),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],)
                          ],
                          ),
                        )

                    ),

                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('         Instagram '),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.blue,


                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.connected_tv),
                                  color: Colors.black,
                                  onPressed: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  LaunchUrl()),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],)
                          ],
                          ),
                        )

                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('          Quiz Game'),
                              Spacer(),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.indigo,


                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.videogame_asset),
                                  color: Colors.black,
                                  onPressed: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => QuizApp()),
                                      // MaterialPageRoute(builder: (context) =>  VideoScreen(url: 'https://youtu.be/8x6CjD6Iyu8', )),
                                    );

                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],)
                          ],
                          ),
                        )

                    ),









                  ])






            ]

         )));
  }
}
