import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informativo sobre jogos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildButton(
              context,
              'Valorant',
              '/page_valorant',
              Colors.red, 
            ),
            SizedBox(height: 20),
            _buildButton(
              context,
              'League of Legends',
              '/page_lol',
              Colors.blue, 
            ),
            SizedBox(height: 20),
            _buildButton(
              context,
              'EA FC24',
              '/page_fc24',
              Colors.green, 
            ),
            SizedBox(height: 20),
            _buildButton(
              context,
              'Contato / Sobre nós',
              '/contato',
              Colors.grey, 
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, String route, Color color) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(20)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(fontSize: 18),
        ),
        elevation: MaterialStateProperty.all<double>(5),
        shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
        animationDuration: Duration(milliseconds: 300),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
