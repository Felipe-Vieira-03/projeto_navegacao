import 'package:flutter/material.dart';

class FC24InfoPage extends StatefulWidget {
  @override
  _Fc24InfoPageState createState() => _Fc24InfoPageState();
}

class _Fc24InfoPageState extends State<FC24InfoPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Informações Gerais do FC24'),
    Text('Modos de Jogo'),
    Text('Carreiras'),
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
        title: Text('FC24 Info'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Modos de Jogo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Carreiras',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary, // Cor do item selecionado
        onTap: _onItemTapped,
      ),
    );
  }
}