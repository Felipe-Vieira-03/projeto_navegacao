import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/widgets/widget_contato.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato / Sobre Nós'),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                tabs: [
                  Tab(text: 'Sobre Nós'),
                  Tab(text: 'Contato'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  WidgetsContact.buildAboutUsTab(),
                  ContactForm(), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
