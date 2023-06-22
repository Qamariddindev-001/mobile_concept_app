import 'package:flutter/material.dart';
import 'package:mobile_concept_app/Widgets/search_widgets.dart';
import 'package:mobile_concept_app/constant.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          leading: const Icon(Icons.menu, color: Colors.black),
          title: const Text(
            'Contact',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(children: [
          const SearchWidgets(),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  itemCount: contaktss.length,
                  itemBuilder: (context, index) {
                    final kontakt = contaktss[index];
                    return ListTile(
                        subtitle: const Text('123 456 789'),
                        leading: Image.asset(
                          kontakt['image'],
                        ),
                        title: Text(kontakt['title']),
                        trailing: const Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(Icons.call),
                          SizedBox(width: 10),
                          Icon(Icons.message),
                        ]),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            'contact_menu',
                            arguments: kontakt,
                          );
                        });
                  }))
        ]));
  }
}
