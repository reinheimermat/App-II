import 'package:flutter/material.dart';

class PlanosDeSeguranca extends StatefulWidget {
  const PlanosDeSeguranca({Key? key}) : super(key: key);

  @override
  _PlanosDeSegurancaState createState() => _PlanosDeSegurancaState();
}

class _PlanosDeSegurancaState extends State<PlanosDeSeguranca> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MRL Planos de Segurança",
              style: TextStyle(color: Colors.orange)),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text("ID",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text("Plano",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text("Tipo",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text("Descrição",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text("Preço mensal",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('1')),
                            DataCell(Text('Rastreamento Veicular')),
                            DataCell(Text('Residencial')),
                            DataCell(Text(
                                'Monitoramento e proteção para todos os seus veículos')),
                            DataCell(Text('79,90')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('2')),
                            DataCell(Text('Porteiro Virtual')),
                            DataCell(Text('Empresarial')),
                            DataCell(Text(
                                'Tecnologia de ponta trabalhando em favor de sua segurança')),
                            DataCell(Text('5.000,00')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('3')),
                            DataCell(Text('Rastreamento Veicular')),
                            DataCell(Text('Empresarial')),
                            DataCell(Text(
                                'Monitoramento e proteção para sua frota de veículos')),
                            DataCell(Text('719,90')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('4')),
                            DataCell(Text('Monitoramento de Alarme')),
                            DataCell(Text('Condominial')),
                            DataCell(Text(
                                'Proteção profissional para o seu condomínio')),
                            DataCell(Text('1.249,90')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('5')),
                            DataCell(Text('Monitoramento de Imagens')),
                            DataCell(Text('Residencial')),
                            DataCell(Text(
                                'O olhar atento e treinado de quem mais entende de sistemas de segurança')),
                            DataCell(Text('120,00')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('6')),
                            DataCell(Text('Monitoramento de Imagens')),
                            DataCell(Text('Condominial')),
                            DataCell(Text(
                                'O olhar atento e treinado de quem mais entende de sistemas de segurança')),
                            DataCell(Text('1.280,00')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('7')),
                            DataCell(Text('Monitoramento de Alarme')),
                            DataCell(Text('Empresarial')),
                            DataCell(Text(
                                'Proteção profissional para a sede da sua empresa')),
                            DataCell(Text('1.900,00')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('8')),
                            DataCell(Text('Porteiro Virtual')),
                            DataCell(Text('Condominial')),
                            DataCell(Text(
                                'Tecnologia de ponta trabalhando em favor de sua segurança')),
                            DataCell(Text('3.000,00')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('9')),
                            DataCell(Text('Aplicativo')),
                            DataCell(Text('Residencial')),
                            DataCell(Text(
                                'Mais segurança para sua casa a um toque de distância')),
                            DataCell(Text('99,90')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('10')),
                            DataCell(Text('Monitoramento de Alarme')),
                            DataCell(Text('Residencial')),
                            DataCell(Text(
                                'O primeiro passo na proteção da sua casa e da sua família')),
                            DataCell(Text('90,00')),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}