import 'package:flutter/material.dart';

void main() {
  runApp(AppBancario());
}

class AppBancario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Bancário',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Banco'),
          centerTitle: true ,
        ),
        body: TelaPrincipal(),
      ),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.green),
            title: Text('Saldo da Conta'),
            subtitle: Text('R\$ 5.000,00'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.attach_money, color: Colors.green),
            title: Text('Última Transferência'),
            subtitle: Text('R\$ 500,00 - 20/09/2024'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.credit_card, color: Colors.green),
            title: Text('Cartão de Crédito'),
            subtitle: Text('Fatura Atual: R\$ 1.200,00'),
          ),
        ),
      ],
    );
  }
}
