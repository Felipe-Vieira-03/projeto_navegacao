import 'package:flutter/material.dart';

class LolInfoPage extends StatefulWidget {
  @override
  _LolInfoPageState createState() => _LolInfoPageState();
}

class _LolInfoPageState extends State<LolInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('League of Legends Info'),
      ),
      body: DefaultTabController(
        length: 3, // Número de abas
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                tabs: [
                  Tab(text: 'Campeões'),
                  Tab(text: 'Itens'),
                  Tab(text: 'Runas'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Conteúdo da aba Campeões
                  Container(
                    child: Center(
                      child: Text('Informações sobre Campeões'),
                    ),
                  ),
                  // Conteúdo da aba Itens
                  Container(
                    child: Center(
                      child: Text('Informações sobre Itens'),
                    ),
                  ),
                  // Conteúdo da aba Runas
                  Container(
                    child: Center(
                      child: Text('Informações sobre Runas'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}