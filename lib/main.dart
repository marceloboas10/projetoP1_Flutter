import 'package:flutter/material.dart';
import 'package:projeto_praticop1/cadastroCliente.dart';
import 'package:projeto_praticop1/cadastroVeiculo.dart';
import 'package:projeto_praticop1/form_cliente.dart';
import 'package:projeto_praticop1/formulario.dart';
//import 'package:projeto_praticop1/formulario.dart';
import 'package:projeto_praticop1/menu.dart';
import 'package:projeto_praticop1/sobre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P1',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: '/sobre',
      routes: {
        '/formulario': (context) => Formulario(),
        '/menu': (context) => TelaMenu(),
        '/cadastroCliente': (context) => CadastroCliente(),
        '/cadastroVeiculo': (context) => CadastroVeiculo(),
        '/form_cliente': (context) => FormCliente(),
        '/sobre': (context) => Sobre()
      },
    );
  }
}

