import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideoScreen extends StatefulWidget {
  final url;

  VideoScreen({this.url});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  YoutubePlayerController _controller;
  void runYoutubePlayer(){
    _controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: true,
      )
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(player: YoutubePlayer(
      controller: _controller,
    ),
        builder: (context,player){
      return Scaffold(
       /* appBar: AppBar(

          //title: Text(widget.url),
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
                    ],
                ),
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                ),
              )),
        body: Container(
      /*decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/image7.jpg"),
          fit: BoxFit.cover,

          ),
          ),*/
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            player,
            SizedBox(height: 50.0,),
            Text('Youtube Player',
              style: TextStyle(fontSize: 20.0, color: Colors.green, fontWeight: FontWeight.bold,),
            ),

          ],

        ),

        ));
        }
    );
  }

}








   /* return Scaffold(
      appBar: AppBar(
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
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/image7.jpg"),
            fit: BoxFit.cover,

          ),
        ),

        //color: Colors.cyanAccent,
*//*        child: BetterPlayer.network('https://youtu.be/8x6CjD6Iyu8',
            betterPlayerConfiguration: BetterPlayerConfiguration(
              aspectRatio: 1,
              looping: true,
              autoPlay: true,
              fit: BoxFit.contain,
             // startAt: Duration(seconds: 10)
            ),


        )*//*

          *//*child: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: 'https://youtu.be/8x6CjD6Iyu8', //Add videoID.
              flags: YoutubePlayerFlags(
                hideControls: false,
                controlsVisibleAtStart: true,
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            //progressIndicatorColor: AppColors.primary,
          ),*//*
      ),

    );*/

