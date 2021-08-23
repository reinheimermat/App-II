import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  const Empresa({ Key? key }) : super(key: key);

  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 0),
        color: Colors.amberAccent[700],
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 0, left: 0, right: 0),
            child: Card(
              color: Colors.black,
              child: Padding(padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Empresa',
                    style: TextStyle(
                      color: Colors.amberAccent[700], fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Com sede em São Leopoldo e contando com serviços de monitoramento eletrônico, pronto atendimento, portaria, zeladoria, limpeza e venda de equipamentos de segurança, a MRL SEGURANÇAS atua em toda São Leopoldo, sempre buscando proporcionar o melhor atendimento aliado a condições que fazem os nossos serviços estarem ao seu alcance, trazendo a segurança e tranqüilidade que você necessita.',
                    style: TextStyle(
                      color: Colors.white, fontSize: 15
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 145, 
                          height: 145,
                          child: Image.asset("images/portaria.jpeg", ),
                        ),
                        SizedBox(
                          width: 145, 
                          height: 145,
                          child: Image.asset("images/limpeza.jpeg"),
                        ),
                        SizedBox(
                          width: 145, 
                          height: 145,
                          child: Image.asset("images/camera.jpeg"),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Text(
                    'Missão',
                    style: TextStyle(
                    color: Colors.amberAccent[700], fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),
                  child: Center(
                   child: Text(
                     "Beneficiar nossos clientes com serviços de qualidade",
                     style: TextStyle(
                     color: Colors.white, fontSize: 15
                   )),
                  ),
                  ),
                  Center(
                    child: Text(
                      "lhes proporcionado segurança e tranqüilidade em tempo integral.",
                      style: TextStyle(
                      color: Colors.white, fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Visão',
                    style: TextStyle(
                    color: Colors.amberAccent[700], fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),
                  child: Center(
                   child: Text(
                     "Seguir em crescimento ascendente, mantendo",
                     style: TextStyle(
                     color: Colors.white, fontSize: 15
                   )),
                  ),
                  ),
                  Center(
                    child: Text(
                      "sempre a qualidade dos serviços e credibilidade.",
                      style: TextStyle(
                      color: Colors.white, fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ), 
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}