import 'package:flutter/material.dart';




class CadastroCliente extends StatefulWidget {
  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista Clientes'),),
      body: ListView(
        children: <Widget>[
          Card(
            
              ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         Navigator.pushNamed(context, '/form_cliente');
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}