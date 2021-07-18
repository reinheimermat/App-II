import 'dart:html';
import 'package:flutter/material.dart';

class layoutera extends StatefulWidget {
  const layoutera({Key? key}) : super(key: key);

  @override
  _layouteraState createState() => _layouteraState();
}

class _layouteraState extends State<layoutera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floricultura"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Image.asset(
                "imagens/bromelia.jfif",
                  width: 200,
                  height: 150,
              ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Curtir"),
              color: Colors.blue,
              onPressed: (){
                print("Curtido");
              },
            ),
            Image.asset(
              "imagens/cacto.jpg",
              width: 200,
              height: 150,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Curtir"),
              color: Colors.blue,
              onPressed: (){
                print("Curtido");
              },
            ),
            Image.asset(
              "imagens/girassol.jpg",
              width: 200,
              height: 150,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Curtir"),
              color: Colors.blue,
              onPressed: (){
                print("Curtido");
              },
            ),
            Image.asset(
              "imagens/suculenta.jfif",
              width: 200,
              height: 150,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Curtir"),
              color: Colors.blue,
              onPressed: (){
                print("Curtido");
              },
            ),
          ],
        ),
      ),
    );
  }
}
