import 'package:flutter/material.dart';
import 'package:oficial_petti/screens/inicio.dart';
import 'screens/curriculum.dart';
import 'screens/Companies.dart';
import 'screens/account.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  String _result = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> _screens = <Widget>
    [
      Inicio(),
      Curriculum(),
      Companies(),
      Account()
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00C29D),
        iconTheme: IconThemeData(
          color: Color(0xff00C29D),
        ),
        title: Image.asset(
          "images/pawdogicon.png",
          width: 80,
          height: 50,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Container (
        padding: EdgeInsets.all(16),
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
        fixedColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff00C29D),
          ),
          BottomNavigationBarItem(
              title: Text("Profissionais"),
            icon: Icon(Icons.contact_mail),
            backgroundColor: Color(0xff00C29D),
          ),
          BottomNavigationBarItem(
              title: Text("Empresas"),
              icon: Icon(Icons.analytics_outlined),
            backgroundColor: Color(0xff00C29D),
          ),
          BottomNavigationBarItem(
              title: Text("Perfil"),
            icon: Icon(Icons.account_circle),
            backgroundColor: Color(0xff00C29D),
          ),
        ]
      ),
    );
  }
}
