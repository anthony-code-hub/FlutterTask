import 'package:flutter/material.dart';

class card_content extends StatelessWidget {
  const card_content({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      padding: EdgeInsets.all(10),
      height: 300,
      color: Colors.grey[900],
      child: Text(
        "Saved:",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
