import 'package:flutter/material.dart';
class textfiledsheet extends StatelessWidget {
  textfiledsheet({
    required this.text,
  }) ;
  String text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
        autofocus: false,
        textDirection: TextDirection.rtl,
          maxLines: 4,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 10, 0,10),
            fillColor:  Color(0xFFffffff),
            filled: true,
            focusColor:  Color(0xFFffffff),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                  width: 1.0,)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            hintText: ' اترك السبب هنا...',
            hintTextDirection: TextDirection.rtl,
            errorStyle: TextStyle(
              color: Colors.red,
            ),

          )
      ),
    );
  }
}