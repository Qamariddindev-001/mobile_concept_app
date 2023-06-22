import 'package:flutter/material.dart';
import 'package:mobile_concept_app/Pages/contact.dart';
import 'package:mobile_concept_app/Pages/contact_menu.dart';
import 'package:mobile_concept_app/Pages/conversation-chat.dart';
import 'package:mobile_concept_app/Pages/conversation_page.dart';

import 'Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'homepage',
      routes: {
        'homepage': (context) {
          return const HomePage();
        },
        'contact': (context) {
          return const Contact();
        },
        'conversation_page': (context) {
          return const ConversationPage();
        },
        'conversation-chat': (context) {
          return const ConversationChat();
        },
        'contact_menu': (context) {
          return const ContactMenu();
        }
      },
    );
  }
}
