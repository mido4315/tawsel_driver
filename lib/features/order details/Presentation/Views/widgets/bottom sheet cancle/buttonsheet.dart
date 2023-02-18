import 'package:flutter/material.dart';


class Buttonsheet extends StatelessWidget {
  Buttonsheet({
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: (Size(380, 48)),
          primary: Color(0xFFFF6600),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          "${text}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ));
  }
}
