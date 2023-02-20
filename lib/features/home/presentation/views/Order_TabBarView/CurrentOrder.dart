import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/OrderLists.dart';

import '../widgets/CurrentOrderCard.dart';
//import '../widgets/NewOrderCard.dart';
//import '../widgets/current_order_card.dart';




class CurrentOrder extends StatelessWidget {
  //const CurrentOrder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(OrderLists().CurrentOrderList.length, (index) {
        return OrderLists().CurrentOrderList[index];
      }),
    );
      }
  }

