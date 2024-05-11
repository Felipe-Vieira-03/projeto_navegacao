import 'package:flutter/material.dart';

class ValorantInfoPage extends StatefulWidget {
  @override
  _ValorantInfoPageState createState() => _ValorantInfoPageState();
}

class _ValorantInfoPageState extends State<ValorantInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações sobre Valorant'),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.people),
                    text: 'Agentes',
                  ),
                  Tab(
                    icon: Icon(Icons.map),
                    text: 'Mapas',
                  ),
                  Tab(
                    icon: Icon(Icons.gavel),
                    text: 'Armas',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildAgentesTab(),
                  _buildMapasTab(),
                  _buildArmasTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações sobre Agentes ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Os agentes são os personagens jogáveis em Valorant. Cada agente possui habilidades únicas que podem ser usadas para ganhar vantagem tática durante a partida.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Adicione mais informações sobre os agentes, se desejar
          ],
        ),
      ),
    );
  }

  Widget _buildMapasTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações sobre Mapas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Os mapas em Valorant são os locais onde as partidas acontecem. Cada mapa possui áreas únicas que os jogadores podem explorar e estratégias diferentes que podem ser empregadas.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Adicione mais informações sobre os mapas, se desejar
          ],
        ),
      ),
    );
  }

  Widget _buildArmasTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Informações sobre Armas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'As armas em Valorant são os principais meios de combate dos jogadores. Existem diferentes tipos de armas, como rifles, pistolas e metralhadoras, cada uma com características únicas de dano, precisão e cadência de tiro.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Adicione mais informações sobre as armas, se desejar
          ],
        ),
      ),
    );
  }
}
