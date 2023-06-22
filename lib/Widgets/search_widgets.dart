import 'package:flutter/material.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15, left: 16),
        height: 49,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.5),
          color: const Color.fromARGB(255, 212, 215, 221),
        ),
        child: const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            icon: Padding(padding: EdgeInsets.only(left: 13), child: Icon(Icons.search, color: Colors.black, size: 20)),
            border: InputBorder.none,
            hintText: 'Suche nach Contact',
            helperStyle: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ));
  }
}
