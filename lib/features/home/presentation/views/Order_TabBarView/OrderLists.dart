import 'package:flutter/material.dart';

import '../widgets/CurrentOrderCard.dart';
import '../widgets/NewOrderCard.dart';

class OrderLists{
  List<Widget> NewOrderList=[NewOrderCard(),NewOrderCard(),NewOrderCard()];
  List<Widget> CurrentOrderList=[CurrentOrderCard(),CurrentOrderCard(),CurrentOrderCard(),CurrentOrderCard()];
  //List AllOrderList=NewOrderList+CurrentOrderList;

}