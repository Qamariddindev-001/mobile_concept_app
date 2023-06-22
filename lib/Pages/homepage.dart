import 'package:flutter/material.dart';
import 'package:mobile_concept_app/Pages/contact.dart';
import 'package:mobile_concept_app/Pages/conversation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List lst = [
    Container(),
    const Contact(),
    const ConversationPage(),
  ];

  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: lst[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {});
              if (value > 0 && value < 3) {
                currentIndex = value;
              }
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.forum), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.public), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ],
          ),
        ));
  }
}
