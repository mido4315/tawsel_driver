import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/OrderLists.dart';


class NewOrder extends StatelessWidget {
  //const CurrentOrder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        OrderLists().NewOrderList.length,
        (index) {
          return OrderLists().NewOrderList[index];
        },
      ),
    );
  }
}
