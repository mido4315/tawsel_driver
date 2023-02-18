import 'package:flutter/material.dart';

class containersheet extends StatelessWidget {
  containersheet({super.key, required, required this.text});

  bool _isChecked = true;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFffffff),
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5)),
        width: 400,
        height: 55,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "$text",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                Checkbox(
                    activeColor: Color(0xFFffffff),
                    side: BorderSide(color: Colors.deepOrange),
                    checkColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    value: _isChecked,
                    onChanged: (value) {
                      _isChecked = value!;
                    })
              ],
            )),
      ),
    );
  }
}