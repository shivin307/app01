import 'package:flutter/material.dart';

class searchBox extends StatefulWidget {
  const searchBox({super.key});

  @override
  State<searchBox> createState() => _searchBoxState();
}

class _searchBoxState extends State<searchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white , borderRadius: BorderRadius.circular(21)),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),

      ),
    );
  }
}
