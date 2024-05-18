import 'package:flutter/material.dart';

class WidgetsValorant {
  static Widget buildAgentesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações sobre Agentes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/valorant/agentes_valorant.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Os agentes são os personagens jogáveis em Valorant. Cada agente possui habilidades únicas que podem ser usadas para ganhar vantagem tática durante a partida.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Características principais:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Habilidades únicas\n• Funções específicas\n• Estratégias variadas',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildMapasTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Mapas',
              style: TextStyle( 
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/valorant/mapas_valorant.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Os mapas em Valorant são os locais onde as partidas acontecem. Cada mapa possui áreas únicas que os jogadores podem explorar e estratégias diferentes que podem ser empregadas.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Características dos Mapas:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Design único\n• Posições estratégicas\n• Áreas para emboscadas',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildArmasTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações sobre Armas',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/valorant/armas_valorant.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'As armas em Valorant são os principais meios de combate dos jogadores. Existem diferentes tipos de armas, como rifles, pistolas e metralhadoras, cada uma com características únicas de dano, precisão e cadência de tiro.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Tipos de Armas:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Rifles\n• Pistolas\n• Metralhadoras',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
