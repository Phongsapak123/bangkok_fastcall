import 'package:bangkok_fast_call_app/model/PoliceList.dart';
import 'package:bangkok_fast_call_app/views/police_detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class PoliceHomeUI extends StatefulWidget {
  const PoliceHomeUI({super.key});

  @override
  State<PoliceHomeUI> createState() => _PoliceHomeUIState();
}

class _PoliceHomeUIState extends State<PoliceHomeUI> {

  List<PoliceList> policelist = [
    PoliceList(
      policename: 'สถานีตำรวจนครบาลดุสิต',
      policeweb: 'https://dusit.metro.police.go.th/',
      policeadd: '75 Rama V Rd, Dusit, Dusit District, Bangkok 10300',
      policeimage: 'dusit.png',
      policemail: 'dusitpolicestation@gmail.com',
      policephone: 'โทรศัพท์ : 02 241 5043',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลสามเสน',
      policeweb: 'http://samsen.metro.police.go.th/',
      policeadd: '101 1 Amnuay Songkhram Rd, Thanon Nakhon Chai Si, Dusit District, Bangkok 10300',
      policeimage: 'samsan.jpg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 241 1461',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลนางเลิ้ง',
      policeweb: 'http://nanglerng.metro.police.go.th/',
      policeadd: '2 Ka Om Rd, Wat Sommanat, Pom Prap Sattru Phai, Bangkok 10100',
      policeimage: 'nang.jpeg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 281 3002',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลชนะสงคราม',
      policeweb: 'http://chanasongkhram.metro.police.go.th/',
      policeadd: ' 20 Chakrabongse Rd, Talat Yot, Phra Nakhon, Bangkok 10200',
      policeimage: 'sana.jpg',
      policemail: 'Chanasongkrampolice191@gmail.com',
      policephone: 'โทรศัพท์ : 02 282 3166',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลพญาไท',
      policeweb: 'https://phayathai.metro.police.go.th/',
      policeadd: '320 Thanon Si Ayutthaya, Thung Phaya Thai, Ratchathewi, Bangkok 10400',
      policeimage: 'paya.jpg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 354 6958',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลมักกะสัน',
      policeweb: 'http://makkasan.metro.police.go.th/',
      policeadd: ' PHWM+CFJ, Kamphaeng Phet 7 Rd, Bang Kapi, Huai Khwang, Bangkok 10310',
      policeimage: 'magsa.png',
      policemail: 'rediomakkasan@gmail.com',
      policephone: 'โทรศัพท์ :  02 319 3000',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลดินแดง',
      policeweb: 'https://dindaeng.metro.police.go.th/',
      policeadd: '45 Mit Maitri Rd, Din Daeng, ้, Bangkok 10400',
      policeimage: 'din.jpg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 246 7707',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลห้วยขวาง',
      policeweb: 'https://web.facebook.com/HuaiKhwangPoliceStation/?locale=th_TH&_rdc=1&_rdr',
      policeadd: '2000 Pracha Songkhro Rd, Din Daeng, Bangkok 10400',
      policeimage: 'h.jpg',
      policemail: '-',
      policephone: '02 692 6691',
    ),
    PoliceList(
      policename: 'สถานีตำรวจนครบาลบางโพ',
      policeweb: 'https://bangpho.metro.police.go.th/',
      policeadd: 'RG59+7HF, Pracha Rat Sai 1 Soi 19, Bang Sue, Bangkok 10800',
      policeimage: 'bang.jpg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 585 0638',
    ),
    PoliceList(
      policename: 'กองกำกับการสืบสวน กองบังคับการตำรวจนครบาล 1',
      policeweb: 'http://div1.metro.police.go.th/',
      policeadd: 'QG6G+7MX, Thung Phaya Thai, Ratchathewi, Bangkok 10400',
      policeimage: 'gong.jpg',
      policemail: '-',
      policephone: 'โทรศัพท์ : 02 354 6167',
    ),
   
    
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 22, 22),
        title: Text(
          'กองบังคับการตำรวจนครบาล 1 (บก.น.1)',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Image.asset(
              'assets/images/policenaja.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: policelist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PoliceDetailUI(
                            policeList: policelist[index],
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/${policelist[index].policeimage}',
                    ),
                    title: Text(policelist[index].policename),
                    subtitle: Text('Tel :' + policelist[index].policephone),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}