import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_valorant.dart';

class ValorantInfoPage extends StatefulWidget {
  @override
  _ValorantInfoPageState createState() => _ValorantInfoPageState();
}

class _ValorantInfoPageState extends State<ValorantInfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsValorant.buildAgentesTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsValorant.buildMapasTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsValorant.buildArmasTab(),
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
          'Conheça o Valorant',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade400,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[800],
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Agentes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mapas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gavel),
              label: 'Armas',
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
