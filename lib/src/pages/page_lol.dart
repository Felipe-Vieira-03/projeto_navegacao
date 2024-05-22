import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_lol.dart';

class LolInfoPage extends StatefulWidget {
  @override
  _LolInfoPageState createState() => _LolInfoPageState();
}

class _LolInfoPageState extends State<LolInfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsLol.buildChampionsTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsLol.buildItemsTab(),
    ),
    Padding(
      padding: const EdgeInsets.all(45.0),
      child: WidgetsLol.buildRunesTab(),
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
          'Conheça o League of Legends',
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
              label: 'Campeões',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory),
              label: 'Itens',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome),
              label: 'Runas',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[400],
          onTap: _onItemTapped,
          backgroundColor: Colors.grey[800],
        ),
      ),
    );
  }
}
