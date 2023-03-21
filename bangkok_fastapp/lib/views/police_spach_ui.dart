import 'package:bangkok_fast_call_app/views/police_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoliceSpachUI extends StatefulWidget {
  const PoliceSpachUI({super.key});

  @override
  State<PoliceSpachUI> createState() => _PoliceSpachUIState();
}

class _PoliceSpachUIState extends State<PoliceSpachUI> {
  //ทำ SplashScreen
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PoliceHomeUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 22, 22),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pz.PNG',
                  ),
                  fit: BoxFit.cover,
                ),
                //border: Border.all(
                 // color: Colors.yellow,
                //),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Center(
              child: Text(
                'สายด่วนตำรวจนครบาล 1 ',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'ไม่มักมากในลาภผล มุ่งบำเพ็ญตนให้เป็นประโยชน์ต่อประชาชน ดำรงตนในยุติธรรม',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
