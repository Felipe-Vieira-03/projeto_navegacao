import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_lol.dart';

class LolInfoPage extends StatefulWidget {
  @override
  _LolInfoPageState createState() => _LolInfoPageState();
}

class _LolInfoPageState extends State<LolInfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    WidgetsLol.buildChampionsTab(),
    WidgetsLol.buildItemsTab(),
    WidgetsLol.buildRunesTab(),
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
        title: Text('Conheça o League Of Legends'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
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
        onTap: _onItemTapped,
      ),
    );
  }
}
