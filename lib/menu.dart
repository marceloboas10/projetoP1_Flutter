
import 'package:flutter/material.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),

        //Desabilitar o botão voltar no appBar
        automaticallyImplyLeading: false,
        ),
        
        body: Container(
        padding: EdgeInsets.all(40),
        
        child: ListView(
          children: [

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Clientes', style: TextStyle(fontSize: 25)),
              onTap: (){
                Navigator.pushNamed(context, '/cadastroCliente');
              },
            ),

            ListTile(
              leading: Icon(Icons.two_wheeler_rounded),
              title: Text('Veículos', style: TextStyle(fontSize: 25)),
              onTap: (){
                Navigator.pushNamed(context, '/cadastroVeiculo');
              },
            ),

            ListTile(
              leading: Icon(Icons.device_unknown_rounded),
              title: Text('Sobre', style: TextStyle(fontSize: 25)),
              onTap: (){
                Navigator.pushNamed(context, '/sobre');
              },
            ),
          ]
        ),

              
      ),  
    );
  }
}