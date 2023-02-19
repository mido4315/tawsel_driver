import 'package:flutter/material.dart';

import '../bottom sheet cancle/containersheet.dart';

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
        onPressed: (){
          showModalBottomSheet(
              backgroundColor: Color(0xFFF3F5F7),
              isScrollControlled: true,
              isDismissible: true,
              elevation: 4,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (ctx) => SingleChildScrollView(child: containersheet(text: 'سبب الغاء',)));
        }, child: Text("$text",style: textStyle
    ));
  }
}
