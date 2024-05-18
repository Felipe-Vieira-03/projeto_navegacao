import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_valorant.dart';

class ValorantInfoPage extends StatefulWidget {
  @override
  _ValorantInfoPageState createState() => _ValorantInfoPageState();
}

class _ValorantInfoPageState extends State<ValorantInfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    WidgetsValorant.buildAgentesTab(),
    WidgetsValorant.buildMapasTab(),
    WidgetsValorant.buildArmasTab(),
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
        title: Text('Conheça o Valorant'),
        centerTitle: true,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
