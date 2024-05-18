import 'package:flutter/material.dart';

class WidgetsFC24 {
  static Widget buildInfoTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações Gerais do FC24',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
                'images/fc24/sobre_o_jogo.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'FC24 é um jogo de futebol popular que oferece uma experiência realista de jogo. Com gráficos avançados e mecânicas de jogo aprimoradas, os jogadores podem se imergir completamente no mundo do futebol virtual.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Características principais:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Gráficos de alta definição\n• Movimentos realistas dos jogadores\n• Diversos modos de jogo\n• Atualizações frequentes com novos conteúdos',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildGameModesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Modos de Jogo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/fc24/ultimate_team.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'O FC24 oferece uma variedade de modos de jogo para atender diferentes preferências dos jogadores. Cada modo oferece uma experiência única e desafios específicos.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Modos disponíveis:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Partidas rápidas\n• Torneios\n• Modo Carreira\n• Desafios diários\n• Modo online competitivo',
              style: TextStyle(fontSize: 18),
            ),
                        SizedBox(height: 20),
            Text(
              'Ultimate Team',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Um dos principais modos de jogo é o Ultimate Team, sendo ele basicamente, uma forma onde o jogador monta seu time unindo jogadores de diversas nacionalidades, efetuando treinamentos e o gerenciamento do time',
              style: TextStyle(fontSize: 18),
            ),

          ],
        ),
      ),
    );
  }

  static Widget buildCareersTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Carreiras',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/fc24/modo_carreira.jpg',
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'No modo Carreira do FC24, os jogadores podem gerenciar um time ao longo de várias temporadas, tomando decisões estratégicas para levar seu time ao topo. Isso inclui a contratação de jogadores, definição de táticas e muito mais.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Destaques do modo Carreira:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Gestão de equipe\n• Desenvolvimento de jogadores\n• Negociações de contratos\n• Planejamento estratégico\n• Participação em ligas e torneios',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
