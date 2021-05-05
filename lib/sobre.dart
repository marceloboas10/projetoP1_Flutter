import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('lib/imagens/marcelo.jpg', height: 169,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.white)),
                ),
            ],
        
          ),
        ),
      ),
    );
  }
}