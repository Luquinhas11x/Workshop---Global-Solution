import 'package:flutter/material.dart';
import 'package:gs/model/contact.dart';

class NamePage extends StatelessWidget {


  const NamePage({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nome do contato: ${contact.nome}"),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Text(contact.numero),),
    );
  }
}