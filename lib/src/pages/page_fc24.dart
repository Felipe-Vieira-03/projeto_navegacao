import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_fc24.dart';


class FC24InfoPage extends StatefulWidget {
  @override
  _Fc24InfoPageState createState() => _Fc24InfoPageState();
}

class _Fc24InfoPageState extends State<FC24InfoPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    WidgetsFC24.buildInfoTab(),
    WidgetsFC24.buildGameModesTab(),
    WidgetsFC24.buildCareersTab(),
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
        title: Text('Conheça o FC 24'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: Theme.of(context).colorScheme.secondary, // Cor do item selecionado
        onTap: _onItemTapped,
      ),
    );
  }
}
