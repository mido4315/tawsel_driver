import 'package:flutter/material.dart';

import '../bottom sheet cancle/order cancle.dart';

class ButtonCard1 extends StatelessWidget {
  ButtonCard1();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(152, 50), primary: Colors.white54),
        onPressed: () {
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
              builder: (ctx) => SingleChildScrollView(child: ordercanclecontainer()));
        },
        child: Text(
          "الغاء الطلب",
          style: TextStyle(color: Colors.black),
        ));
  }
}

class ButtonCard2 extends StatelessWidget {
  ButtonCard2();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(152, 50),
          primary: Colors.deepOrange,
        ),
        onPressed: () {},
        child:
            Text('انهاء الطلب', style: const TextStyle(color: Colors.white)));
  }
}
