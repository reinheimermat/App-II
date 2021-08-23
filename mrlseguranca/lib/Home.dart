import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        padding: EdgeInsets.only(top: 0),
        color: Colors.amberAccent[700],
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.black,
              child: Padding(padding: EdgeInsets.all(0),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 160, 
                          height: 145,
                          child: Image.asset("images/portaria.jpeg"),
                        ),
                        SizedBox(
                          width: 160, 
                          height: 145,
                          child: Image.asset("images/limpeza.jpeg"),
                        ),
                        SizedBox(
                          width: 160, 
                          height: 145,
                          child: Image.asset("images/camera.jpeg"),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Text(
                      'Nossas Soluções',
                      style: TextStyle(
                        fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      'Conheça Nossas soluções e como podemos',
                      style: TextStyle(
                        fontSize: 20, color: Colors.grey,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2),
                  child: Center(
                    child: Text(
                      'Personalizá-la para atender o seu negócio',
                      style: TextStyle(
                        fontSize: 20, color: Colors.grey,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      'Nossas Soluções',
                      style: TextStyle(
                        fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'PORTARIA VIRTUAL',
                      style: TextStyle(
                        fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 0),
                  child: Container(
                    child: SizedBox(
                      width: 200, 
                      height: 200,
                      child: Image.asset(
                        "images/portaria.jpeg",
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 0, right: 62),
                  child: Text(
                    'Segurança Eletrônica 24h',
                    style: TextStyle(
                      fontSize: 12, color: Colors.grey,
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 120),
                  child: Center(
                    child: Text(
                    'LIMPEZA',
                    style: TextStyle(
                      fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 0),
                  child: Container(
                    child: SizedBox(
                      width: 200, 
                      height: 200,
                      child: Image.asset(
                        "images/limpeza.jpeg",
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 55),
                  child: Text(
                    'Conservação de Ambientes',
                    style: TextStyle(
                      fontSize: 12, color: Colors.grey,
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 120),
                  child: Center(
                    child: Text(
                      'CÂMERAS CFTV',
                      style: TextStyle(
                        fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 0),
                  child: Container(
                    child: SizedBox(
                      width: 200, 
                      height: 200,
                      child: Image.asset(
                        "images/camera.jpeg",
                      ),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 75),
                  child: Text(
                    'Monitore tudo de perto',
                    style: TextStyle(
                    fontSize: 12, color: Colors.grey,
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}