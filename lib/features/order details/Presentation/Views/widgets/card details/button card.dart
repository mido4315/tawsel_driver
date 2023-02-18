import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
   ButtonCard({required this.text,required this.color,required this.textStyle}) ;
  String text;
  Color color;
  TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(152, 50),
        primary: color

      ),
        onPressed: (){}, child: Text("$text",style: textStyle
    ));
  }
}
