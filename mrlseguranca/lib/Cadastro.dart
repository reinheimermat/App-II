import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
        ),
        color: Colors.amber[700],
        child: ListView(
          children: [
            //IMAGEM E TAMANHO
            SizedBox(
              width: 210,
              height: 210,
              child: Image.asset("images/final.png"),
            ),

            //CARD NOME
            Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Card(
                color: Colors.black,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle, color: Colors.amberAccent[700]),
                    labelText: 
                    'Digite Seu Nome:',
                    labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    //controller: _controllerIdade,
                ),
                ),
              ),
            ),

            //CARD E-MAIL
            Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Card(
                color: Colors.black,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Colors.amberAccent[700]),
                    labelText: 
                    'Digite Seu E-Mail:',
                    labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    //controller: _controllerIdade,
                ),
                ),
              ),
            ),

            //CARD SENHA
            Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Card(
                color: Colors.black,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.amberAccent[700]),
                    labelText: 
                    'Crie Sua Senha:',
                    labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    //controller: _controllerIdade,
                ),
                ),
              ),
            ),

            //BOTÃO CADASTRO
            Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Card(
              color: Colors.white,
              //ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.indigo[900],
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                child: Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            ),

            //BOTÃO LIMPAR
            Padding(padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Card(
              color: Colors.white,
              //ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.redAccent[700],
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                child: Text(
                  'Limpar Campos',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}