import 'package:flutter/material.dart';
import 'package:tawsel_driver/core/utils/constants.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/Custom_ListTile.dart';

import 'Container_BoxShadow.dart';

class FinshedOrderCard extends StatefulWidget {
  const FinshedOrderCard({Key? key}) : super(key: key);

  @override
  State<FinshedOrderCard> createState() => _FinshedOrderCardState();
}

class _FinshedOrderCardState extends State<FinshedOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 8, left: 8),

      //height: 300,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          ContainerBoxShadow().boxShadow(),
        ],
      ),
      child: Column(
        children: [
          Custom_ListTitle(
            mainTitle: 'كريسبي و كرانشي',
            subTitle: "شارع 10 - باب الشعرية - القاهرة",
            imageUrl: 'assets/image/driverimage.png',
            leading_choise: false,
            leading_text: 'لم يكتمل',
            leading_color: Color(0xffFF0900),
          ),
          SizedBox(
            width: PageSize.width(context) * 0.9,
            child: Divider(
              color: Colors.black38,
            ),
          ),
          wraptext(
            title: 'شارع 10 - باب الشعرية - القاهرة',
            icon: Icons.circle_outlined,
            iconColor: Color(0xff000000),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Transform.rotate(
              angle: 3.14 / 2,
              child: SizedBox(
                width: 26,
                child: Divider(height: 25, color: Colors.black12, thickness: 3),
              ),
            ),
          ),
          wraptext(
            title: 'شارع 44 - السبتية - القاهرة',
            icon: Icons.location_on_rounded,
            iconColor: Color(0xffFF6600),
          ),
          SizedBox(
            height: 10,
          ),
          wraptext(
              title: '20/10/2021 ، 11:00ص ',
              icon: Icons.access_time,
              iconColor: Colors.black38),
          CostListTile(leadingTextBool: true, cost: 50),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Open Order Detail Page'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            style: ElevatedButton.styleFrom(primary: Color(0xffECECEC)),
            child: SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  'عرض التفاصيل ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff535353),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget CostListTile({required bool leadingTextBool, double? cost}) {
    return ListTile(
      leading: leadingTextBool
          ? Text(
              '$cost ج.م ',
              style: TextStyle(fontSize: 16),
            )
          : Icon(
              Icons.linear_scale,
              size: 50,
            ),
      trailing: Text(
        ': التكلفة  ',
        style: TextStyle(fontSize: 17),
      ),
    );
  }

  Widget wraptext(
      {required String title,
      required IconData icon,
      required Color iconColor}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Text(title),
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
