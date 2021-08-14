import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleWidget extends StatelessWidget {
  String title;
  double size;

  TitleWidget(this.title, this.size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Text(title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: size)),
    );
  }
}
