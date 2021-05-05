import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('lib/imagens/logo.png', height: 169,),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.white)),
                ),
                Divider(),
                TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.multiline,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.white)),
                ),
                Divider(),
                  ButtonTheme(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () =>{Navigator.pushNamed(context, '/menu')},
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}