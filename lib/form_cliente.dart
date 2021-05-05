import 'package:flutter/material.dart';

class FormCliente extends StatefulWidget {
  @override
  _FormClienteState createState() => _FormClienteState();
}

class _FormClienteState extends State<FormCliente> {

  final TextEditingController _nome = TextEditingController();
  final TextEditingController _cpf = TextEditingController();
  final TextEditingController _endereco = TextEditingController();
  final TextEditingController _telefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nome,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: _cpf,
              decoration: InputDecoration(
                labelText: 'CPF',
              ),
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _endereco,
              decoration: InputDecoration(
                labelText: 'Endereço',
              ),
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: _telefone,
              decoration: InputDecoration(
                labelText: 'Telefone',
              ),
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
            ),
              ButtonTheme(
                height: 40,
                child: ElevatedButton(
                  onPressed: (){

                    setState(() {
                      
                  
                    final String nome = _nome.text;
                    final int cpf = int.tryParse(_cpf.text);
                    final String endereco = _endereco.text;
                    final int telefone = int.tryParse(_telefone.text);
                    // ignore: unused_local_variable
                    final Contato novoContato = Contato(nome, cpf, endereco, telefone);
                    Navigator.pushNamed(context, '/cadastroCliente');
                      });
                  },
                    child: Text(
                      "Confirmar",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

class Contato {

final String nome;
final int cpf;
final String endereco;
final int telefone;

  Contato(this.nome, this.cpf, this.endereco, this.telefone);

@override
  String toString() {
  
    return 'Contato{nome: $nome, cpf: $cpf, endereco: $endereco, telefone: $telefone}';
  }

}