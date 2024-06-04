import 'package:flutter/material.dart';
import 'package:gs/model/contact.dart';
import 'package:gs/page/name_page.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> list = [
    Contact("Lucas", "122323412"),
    Contact("Pedro", "432424324"),
    Contact("Miguel", "547456453"),
  ];

  void _removeContact(int index) {
    setState(() {
      list.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Global Solution - Lista de Contatos"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(list[index].nome[0].toUpperCase()),
                  ),
                  title: Text(list[index].nome),
                  subtitle: Text(list[index].numero),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _removeContact(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NamePage(contact: list[index]),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
