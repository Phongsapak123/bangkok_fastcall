import 'package:bangkok_fast_call_app/model/PoliceList.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PoliceDetailUI extends StatefulWidget {

  PoliceList? policeList;

 PoliceDetailUI({super.key, this.policeList});

  @override
  State<PoliceDetailUI> createState() => _PoliceDetailUIState();
}

class _PoliceDetailUIState extends State<PoliceDetailUI> {
Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  //ใช้เข้าเว็บ
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 22, 22),
        title: Text(
          '' + widget.policeList!.policename + '',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/' + widget.policeList!.policeimage,
                  ),
                  fit: BoxFit.cover,
                ),
                
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.hospitalUser,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                title: Text(
                  'ชื่อ : ' + widget.policeList!.policename,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[100],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _makePhoneCall(widget.policeList!.policephone);
                },
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                title: Text(
                  '' + widget.policeList!.policephone,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(Uri.parse(widget.policeList!.policeweb));
                },
                leading: Icon(
                  FontAwesomeIcons.globe,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                title: Text(
                  'Website : ' + widget.policeList!.policeweb,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.mapLocationDot,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                title: Text(
                  'ที่อยู่ : ' + widget.policeList!.policeadd,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
          ],
        ),
      ),
    );
  }
}