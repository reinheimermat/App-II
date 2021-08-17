import 'package:flutter/material.dart';

class Campos extends StatefulWidget {
  const Campos({Key? key}) : super(key: key);

  @override
  _CamposState createState() => _CamposState();
}

class _CamposState extends State<Campos> {
  //CAMPOS
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerNumero = TextEditingController();
  TextEditingController _controllerLocalizacao = TextEditingController();
  String _valores = "";

  void _loginUsuario() {
    String usuario = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    String endereco = _controllerNumero.text;
    String idade = _controllerLocalizacao.text;

    if (usuario.isEmpty) {
      setState(() {
        _valores = 'CAMPO "USUARIO" ESTÁ EM BRANCO!';
      });
    } else if (email.isEmpty) {
      setState(() {
        _valores = 'CAMPO "EMAIL" ESTÁ EM BRANCO!';
      });
    } else if (senha.isEmpty) {
      setState(() {
        _valores = 'CAMPO "SENHA" ESTÁ EM BRANCO!';
      });
    } else if (endereco.isEmpty) {
      setState(() {
        _valores = 'CAMPO "ENDEREÇO" ESTÁ EM BRANCO!';
      });
    } else if (idade.isEmpty) {
      setState(() {
        _valores = 'CAMPO "IDADE" ESTÁ EM BRANCO!';
      });
    } else {
      _valores = "OK!";
    }
    _limparCampos();
  }

  void _limparCampos() {
    _controllerNome.text = "";
    _controllerEmail.text = "";
    _controllerSenha.text = "";
    _controllerNumero.text = "";
    _controllerLocalizacao.text = "";
  }
  //CHEACK BOX
  bool _selecionarValor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.indigo[900], title: Text('Formulario')),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.indigo[900],
        child: ListView(
          children: <Widget>[
             Padding(
              padding: EdgeInsets.only(
                top: 50, left: 10,
              ),
              child: Text(
                "Cadastro de Cliente:",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      icon:
                      Icon(Icons.account_circle, color: Colors.indigo[900]),
                      labelText: 'Digite Seu Nome:',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _controllerNome,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email, color: Colors.indigo[900]),
                      labelText: 'Digite Seu Email:',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _controllerEmail,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.indigo[900]),
                      labelText: 'Crie Sua Senha:',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _controllerSenha,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: Icon(Icons.call, color: Colors.indigo[900]),
                      labelText: 'Digite seu Número (51) 912345678:',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _controllerNumero,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      icon: Icon(Icons.room, color: Colors.indigo[900]),
                      labelText: 'Digite sua localização:',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    controller: _controllerLocalizacao,
                  ),
                ),
              ),
            ),
            CheckboxListTile(
              title: Text('Salvar Dados', style: TextStyle(color: Colors.white)),
              value: _selecionarValor,
              onChanged: (_valorcheck)
              {
                setState(() {
                  if(_selecionarValor)
                  {
                    _selecionarValor = false;
                  }
                  else
                  {
                    _selecionarValor = true;
                  }
                });
              }
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              //ignore: deprecated_member_use
              child: RaisedButton(
                  color: Colors.indigo,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Cadastrar Cliente",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _loginUsuario),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              //ignore: deprecated_member_use
              child: RaisedButton(
                  color: Colors.redAccent[700],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Limpar campos",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _limparCampos),
            ),
            Padding(padding: EdgeInsets.only(top: 15),
            child: Text(
              _valores,
              style: TextStyle( fontWeight: FontWeight.bold),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
