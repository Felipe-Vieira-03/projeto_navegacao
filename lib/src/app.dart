import 'package:flutter/material.dart';
import 'package:projeto_navegacao_flutter/src/pages/homepage.dart';
import 'package:projeto_navegacao_flutter/src/pages/page_valorant.dart';
import 'package:projeto_navegacao_flutter/src/pages/page_lol.dart';
import 'package:projeto_navegacao_flutter/src/pages/page_fc24.dart';
import 'package:projeto_navegacao_flutter/src/pages/page_contato.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zed´s GameHouse',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade400),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page_valorant': (context) => ValorantInfoPage(),
        '/page_lol': (context) => LolInfoPage(),
        '/page_fc24': (context) => FC24InfoPage(),
        '/contato': (context) => ContatoPage(),
      },
    );
  }
}
