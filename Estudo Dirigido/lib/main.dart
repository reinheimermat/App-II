import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Estudo dir. | Matheus Reinheimer',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Assistente"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.asset('images/teste.jfif'),
            Center(
              child: Text(
                "Ola, Sou O Google Assistente",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Center(
              child: Text(
                'Seu Assistente Virtual',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        //direcionando para outra página
                        MaterialPageRoute(
                            builder: (context) => SegundaClasse()));
                  },
                  icon: Icon(Icons.arrow_right),
                  label: Text(
                    'Acessar Assistente',
                  )),
            ),
          ],
        ));
  }
}

class SegundaClasse extends StatefulWidget {
  const SegundaClasse({Key? key}) : super(key: key);

  @override
  _SegundaClasseState createState() => _SegundaClasseState();
}

class _SegundaClasseState extends State<SegundaClasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Assistente"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add_alarm),
            title: Text('Adicionar alarme:'),
          ),
          ListTile(
            leading: Icon(Icons.add_business),
            title: Text("Adicionar trabalho"),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Localização"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MapaClasse()));
            },
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new_rounded),
            title: Text("Acessibilidade"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AcessibilidadeClasse()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Diga "OK GOOGLE"'),
          ),
          Image.asset(
            'images/assistente.jpg',
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    //direcionando para outra página
                    MaterialPageRoute(builder: (context) => TerceiraClasse()));
              },
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: Text('Avançar'),
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}

class TerceiraClasse extends StatefulWidget {
  const TerceiraClasse({Key? key}) : super(key: key);

  @override
  _TerceiraClasseState createState() => _TerceiraClasseState();
}

class _TerceiraClasseState extends State<TerceiraClasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resumo do dia:"),
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset('images/feed1.png'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Image.asset('images/feed2.png'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Image.asset('images/feed3.png'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Image.asset('images/feed4.png'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}

class MapaClasse extends StatefulWidget {
  const MapaClasse({Key? key}) : super(key: key);

  @override
  _MapaClasseState createState() => _MapaClasseState();
}

class _MapaClasseState extends State<MapaClasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset('images/gmap.jpeg'),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}

class AcessibilidadeClasse extends StatefulWidget {
  const AcessibilidadeClasse({Key? key}) : super(key: key);

  @override
  _AcessibilidadeClasseState createState() => _AcessibilidadeClasseState();
}

class _AcessibilidadeClasseState extends State<AcessibilidadeClasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acessibilidade"),
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset('images/tapa.jpeg'),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_outlined),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}
