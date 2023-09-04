import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final TextEditingController textController;

  const Screen2({Key? key, required this.textController}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.textController.text),
      ),
    );
  }
}
