import 'package:flutter/material.dart';

class WidgetsLol {
  static Widget buildChampionsTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Quais são os personagens do League Of Legends',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/lol/campeoes_lol.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Os campeões são os personagens jogáveis em League of Legends. Cada campeão possui habilidades únicas que podem ser usadas para ganhar vantagem tática durante a partida.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Características principais:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Habilidades únicas\n• Funções específicas no jogo\n• Histórico e histórias individuais',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildItemsTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Conheça os itens do jogo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/lol/itens_lol.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Os itens em League of Legends fornecem vantagens estratégicas e aumentam o poder dos campeões. Cada item possui características únicas que podem influenciar o curso da partida.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Tipos de Itens:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Itens ofensivos\n• Itens defensivos\n• Itens utilitários',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildRunesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Runas: O que são? Para que servem?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/lol/runas_lol.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'As runas em League of Legends são bônus que os jogadores podem escolher antes do início da partida. Elas fornecem vantagens estratégicas adicionais aos campeões.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Tipos de Runas:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Runas ofensivas\n• Runas defensivas\n• Runas de utilidade',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
