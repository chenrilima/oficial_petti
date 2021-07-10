import 'package:flutter/material.dart';
import 'package:oficial_petti/Screens/Companies.dart';
import 'package:oficial_petti/Screens/account.dart';
import 'package:oficial_petti/Screens/profile.dart';
import 'package:oficial_petti/Screens/register_professional.dart';
import 'package:oficial_petti/Screens/home.dart';
import 'package:oficial_petti/Utils/appcolors.dart';

import 'Screens/register_company.dart';

class AllScreens extends StatefulWidget {
  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  int _currentIndex = 0;
  String _result = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = <Widget>[
      Home(),
      RegisterProfessional(),
      RegisterCompany(),
      Profile()
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff00C29D),
      //   iconTheme: IconThemeData(
      //     color: Color(0xff00C29D),
      //   ),
      //   title: Image.asset(
      //     "images/pawdogicon.png",
      //     width: 80,
      //     height: 50,
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.logout),
      //       color: Colors.black,
      //       onPressed: () {},
      //     ),
      //   ],
      //),
      body: Container(

        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (indice) {
            setState(() {
              _currentIndex = indice;
            });
          },

          type: BottomNavigationBarType.shifting,
          fixedColor: Colors.blueGrey,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,

          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),

            ),
            BottomNavigationBarItem(
              title: Text("Profissionais"),
              icon: Icon(Icons.contact_mail),

            ),
            BottomNavigationBarItem(
              title: Text("Empresas"),
              icon: Icon(Icons.analytics_outlined),

            ),
            BottomNavigationBarItem(
              title: Text("Perfil"),
              icon: Icon(Icons.account_circle),

            ),
          ]),
    );
  }
}
