import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalhealth/screens/weakly_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 28),
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
                'Get\n  It\nDone!',
                style: GoogleFonts.notoSerifGeorgian(
                    color: Colors.blue.shade900,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 80),
              Text(
                'Fon This Week',
                style: GoogleFonts.notoSansGeorgian(
                    color: Colors.blue.shade900,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 50),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue.shade900),
                child: Column(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeaklyTask()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: Text('Week 1'),
                    ),
                  ),
                  const Text(
                    'Athena Meeting',
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              )
            ])
          ],
        ),
      ),
    );
  }
}
