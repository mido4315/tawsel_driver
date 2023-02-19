import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/cancellation_reason.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/card%20details/first%20card.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/card%20details/second%20card.dart';
import 'widgets/call_customer_button.dart';
import 'widgets/customer_details.dart';
import 'widgets/order_details_list.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
          },
          icon: SvgPicture.asset("images/notifications icon2.svg"),
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "تفاصيل الطلب",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children:  [
          containercard(),
          SizedBox(
            height: 18,
          ),
          CancellationReason(),
          SizedBox(
            height: 12,
          ),
          OrderDetailsList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text(
              "بيانات العميل",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomerData(
            data: 'اسم العميل',
            value: 'إبراهيم خالد احمد',
          ),
          CustomerData(
            data: 'عنوان العميل',
            value: 'شارع 44 - السبتية - القاهره',
          ),
          CustomerData(
            data: 'طريقة الدفع',
            value: 'تم الدفع بالفيزا',
          ),
          CustomerData(
            data: 'رقم العميل',
            value: '01452202515',
          ),
          SizedBox(
            height: 12,
          ),
          CallCustomerButton(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
