import 'package:flutter/material.dart';
import 'package:mobile_concept_app/constant.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE5E5E5),
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text('Conversation', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)),
      ),
      body: Column(children: [
        Container(
            margin: const EdgeInsets.only(top: 15, left: 16),
            height: 49,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.5),
              color: const Color.fromARGB(255, 212, 215, 221),
            ),
            child: const TextField(decoration: InputDecoration(contentPadding: EdgeInsets.all(0), icon: Padding(padding: EdgeInsets.only(left: 13), child: Icon(Icons.search, color: Colors.black, size: 20)), border: InputBorder.none, hintText: 'Suche nach Conversation', helperStyle: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700)))),
        const SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
                itemCount: contaktss.length,
                itemBuilder: (context, index) {
                  final kontakt = contaktss[index];
                  return ListTile(
                    subtitle: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('123 456 789'), Icon(Icons.done_all, size: 15)],
                    ),
                    leading: Image.asset(kontakt['image']),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(kontakt['title']), Text(kontakt['time'], style: const TextStyle(color: Colors.grey, fontSize: 14))],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'conversation-chat', arguments: kontakt);
                    },
                  );
                }))
      ]),
    );
  }
}
