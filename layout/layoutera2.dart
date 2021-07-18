import 'package:flutter/material.dart';

class layoutera2 extends StatefulWidget {
  const layoutera2({ Key? key }) : super(key: key);

  @override
  _layoutera2State createState() => _layoutera2State();
}

class _layoutera2State extends State<layoutera2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/suculenta.jfif",
                width: 750,
                height: 550,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("curtir"),
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
