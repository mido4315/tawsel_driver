import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/order_details2.dart';

import '../../order_details.dart';


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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OrderDetails2()));
        },
        child: Text(
          "${text}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ));
  }
}
