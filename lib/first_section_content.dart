import 'package:flutter/material.dart';

class first_section_content extends StatelessWidget {
  const first_section_content({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        padding: EdgeInsets.all(10),
        height: 250,
        color: Colors.grey[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filename: AudioFile01.mp3",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Time: 4:35",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Time selected: 1:23 - 2:05",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
