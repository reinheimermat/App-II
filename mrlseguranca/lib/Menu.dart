import 'package:flutter/material.dart';
import 'package:mrlseguranca/Cadastro.dart';
import 'package:mrlseguranca/Empresa.dart';
import 'package:mrlseguranca/Home.dart';
import 'package:mrlseguranca/Maps.dart';
import 'package:mrlseguranca/Planos.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //BARRA
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amberAccent[700]),
        backgroundColor: Colors.black,
        title: Text("MRL SEGURANÇAS", style: TextStyle(color: Colors.white)),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(child: Text('Home', style: TextStyle(color: Colors.white)), icon: Icon(Icons.home, color: Colors.amberAccent[700])),
            Tab(child: Text('Empresa', style: TextStyle(color: Colors.white)), icon: Icon(Icons.verified_user, color: Colors.amberAccent[700])),
            Tab(child: Text('Planos', style: TextStyle(color: Colors.white)), icon: Icon(Icons.paid, color: Colors.amberAccent[700])),
            Tab(child: Text('Cadastro', style: TextStyle(color: Colors.white)), icon: Icon(Icons.account_circle, color: Colors.amberAccent[700])),
          ],
        ),
      ),
      body: 
      TabBarView(
        controller: _tabController,
        children: [
          Home(),
          Empresa(),
          PlanosDeSeguranca(),
          Cadastro(),
        ],
      ),
      //DRAWER LATERAL
      drawer: Drawer(
        child: Container(
          decoration: new BoxDecoration(color: Colors.amberAccent[700]),
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5),
            child: Card(
              color: Colors.black,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text("MRL SEGURANÇAS", style: TextStyle(color: Colors.white)),
                accountEmail: Text("mrlsegurancas@gmail.com", style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  child: Image.asset(
                    "images/final.png",
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            ),
            
            //ABA HOME
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.amberAccent[700]),
                    title: Text(
                      'Home', 
                    style: TextStyle(
                      fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Tela Inicial', 
                    style: TextStyle(
                      fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700],
                    ),
                    onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                 ),
                ),

            //ABA EMPRESA
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.verified_user, 
                    color: Colors.amberAccent[700],
                    ),
                    title: Text(
                      'Empresa', 
                    style: TextStyle(
                      fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Sobre a Empresa', 
                    style: TextStyle(
                      fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700],
                    ),
                    onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Empresa()));
                    },
                  ),
                 ),
                ),

            //ABA PLANOS
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.paid, 
                    color: Colors.amberAccent[700],
                    ),
                    title: Text(
                      'Planos', 
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Planos de Segurança', 
                      style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700],
                    ),
                    onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => PlanosDeSeguranca()));
                    },
                  ),
                 ),
                ),

            //ABA CONTA
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.account_circle, 
                    color: Colors.amberAccent[400],
                    ),
                    title: Text(
                      'Conta', 
                      style: TextStyle(
                        fontSize: 18,color: Colors.white),
                    ),
                    subtitle: Text(
                      'Configurações', 
                      style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700],
                    ),
                    onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Cadastro()));
                    },
                  ),
                 ),
                ),

            //ABA LOCALIZAÇÃO
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.location_on, 
                    color: Colors.amberAccent[400],
                    ),
                    title: Text(
                      'Localização', 
                      style: TextStyle(
                        fontSize: 18,color: Colors.white),
                        ),
                    subtitle: Text(
                      'Local de loja', 
                      style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                        ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700]),
                    onTap: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Maps()));
                    },
                  ),
                 ),
                ),

            //ABA SAIR
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 5.0),
                child: Card(
                  color: Colors.redAccent[700],
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app, 
                    color: Colors.amberAccent[700],
                    ),
                    title: Text(
                      'Voltar', 
                      style: TextStyle(
                        fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Voltar Para Tela Inicial', 
                      style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward, 
                    color: Colors.amberAccent[700],
                    ),
                    onTap: () {
                     Navigator.pop(context);
                    },
                  ),
                ),
              ),
          ],
        ),
        ),
      ),
    );
  }
}
