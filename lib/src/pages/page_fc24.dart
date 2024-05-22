import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_fc24.dart';

class FC24InfoPage extends StatefulWidget {
  @override
  _Fc24InfoPageState createState() => _Fc24InfoPageState();
}

class _Fc24InfoPageState extends State<FC24InfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsFC24.buildInfoTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsFC24.buildGameModesTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsFC24.buildCareersTab(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        title: Text(
          'Conheça o FC24',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade400,
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[800],
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Sobre o Jogo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Jogabilidade',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Modo Carreira',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          onTap: _onItemTapped,
          backgroundColor: Colors.grey[800],
        ),
      ),
    );
  }
}
