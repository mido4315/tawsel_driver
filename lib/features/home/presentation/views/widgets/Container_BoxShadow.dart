import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerBoxShadow{
  BoxShadow boxShadow(){
    return
      BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      blurRadius: 6.0, // soften the shadow
      spreadRadius: 2.0, //extend the shadow
      offset: Offset(
        2.0, // Move to right 5  horizontally
        6.0, // Move to bottom 5 Vertically
      ),
    );
  }
}