import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SaudeFisica extends StatefulWidget {
  @override
  _SaudeFisicaState createState() => _SaudeFisicaState();
}

class _SaudeFisicaState extends State<SaudeFisica> {
  String videoURL = "https://www.youtube.com/watch?v=DOe7Gz1JzEQ";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Saúde Física"),
        centerTitle: true,
        backgroundColor: Color(0xFF7BA4DB).withOpacity(0.4),
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/first-content.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  color: Colors.white),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Text(
                      'Dicas de treinos para fazer em casa',
                      style: TextStyle(
                        color: Color(0XFF505759),
                        fontFamily: 'Sansita Swashed',
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit. Cras luctus eu mauris sit amet imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras dapibus sapien id vestibulum egestas. ',
                      style: TextStyle(
                        color: Color(0XFF75787B),
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit. Cras luctus eu mauris sit amet imperdiet.',
                      style: TextStyle(
                        color: Color(0XFF75787B),
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    YoutubePlayer(
                      controller: _controller,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit. Cras luctus eu mauris sit amet imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras dapibus sapien id vestibulum egestas. ',
                      style: TextStyle(
                        color: Color(0XFF75787B),
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit. Cras luctus eu mauris sit amet imperdiet.',
                      style: TextStyle(
                        color: Color(0XFF75787B),
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
