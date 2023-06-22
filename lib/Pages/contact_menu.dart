import 'package:flutter/material.dart';
//import 'package:mobile_concept_app/constant.dart';

class ContactMenu extends StatefulWidget {
  const ContactMenu({super.key});

  @override
  State<ContactMenu> createState() => _ContactMenuState();
}

class _ContactMenuState extends State<ContactMenu> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Contact', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
          actions: const [Icon(Icons.more_vert, color: Colors.black)],
        ),
        body: Center(
            child: Stack(clipBehavior: Clip.none, children: [
          Container(
              height: 300,
              width: 330,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))]),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const SizedBox(height: 20),
                Text(args['title'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Text(args['subtitle'], style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 20),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.call), SizedBox(width: 10), Text('123 456 789')]),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.mail), SizedBox(width: 10), Text('senna@mail.ls')]),
                const SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140, 37)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), onPressed: () {}, child: const Text('Anrufen')),
                  const SizedBox(width: 10),
                  ElevatedButton(style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140, 37)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), onPressed: () {}, child: const Text('Nachricht')),
                ])
              ])),
          Positioned(top: -90, left: 0, right: 0, child: Image.asset(args['image'], height: 183, fit: BoxFit.contain))
        ])));
  }
}
