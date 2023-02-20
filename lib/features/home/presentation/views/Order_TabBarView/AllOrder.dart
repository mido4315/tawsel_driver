import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/CurrentOrder.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/NewOrder.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/OrderLists.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/NewOrderCard.dart';

import '../widgets/CurrentOrderCard.dart';
import '../widgets/FinshedOrderCard.dart';
//import '../widgets/NewOrderCard.dart';
//import '../widgets/current_order_card.dart';

class AllOrder extends StatelessWidget {
  //const CurrentOrder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      OrderTypeTitle(orderTitle: 'الطلبات الحالية'),
      CurrentOrderCard(),
      CurrentOrderCard(),
      OrderTypeTitle(orderTitle: 'الطلبات الجديدة'),
      NewOrderCard(),
      OrderTypeTitle(orderTitle: 'طلبات منتهية'),
      FinshedOrderCard(),
      FinshedOrderCard(),
    ],
    );
  }
  Widget OrderTypeTitle({required String orderTitle}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(orderTitle, style: TextStyle(fontSize: 18,color: Colors.black),
        ),
      ),
    );
  }
}
