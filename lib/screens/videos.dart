import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayVideos extends StatefulWidget {
  const PlayVideos({super.key});

  @override
  State<PlayVideos> createState() => _PlayVideosState();
}

class _PlayVideosState extends State<PlayVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        _appBar(),
        const SizedBox(height: 20),
        _diseasesTile('Diabetes'),
        _diseasesTile('Obesity'),
      ]),
    );
  }

  _diseasesTile(String title) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(6),
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            margin: EdgeInsets.all(6),
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: 20),
          Text(
            title,
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 32),
      height: 200,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 172, 200, 222),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.blue.shade900,
              ),
              CircleAvatar(
                child: Icon(Icons.person_2_rounded),
              )
            ],
          ),
          Column(children: [
            Text(
              'Videos',
              style: GoogleFonts.notoSerifGeorgian(
                  color: Colors.blue.shade900,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Let get Started',
              style: GoogleFonts.notoSansGeorgian(
                  color: Colors.blue.shade900,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ])
        ],
      ),
    );
  }
}
