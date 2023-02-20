import 'package:flutter/material.dart';
import 'package:tawsel_driver/core/utils/constants.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/Custom_ListTile.dart';

import 'Container_BoxShadow.dart';

class CurrentOrderCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.only(top: 10,bottom: 10,right: 8,left: 8),
      height: 300,
      width:200 ,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            ContainerBoxShadow().boxShadow()
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Custom_ListTitle(
            mainTitle: 'كريسبي و كرانشي',
            subTitle: 'شارع 10 - باب الشعرية- القاهرة ',
            imageUrl: 'assets/image/driverimage.png',
            leading_choise: false,
            leading_text: 'كاش',
            leading_color: Color(0xffFF6600),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('open Order Detail Page'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              side: const BorderSide(
                color: Color(0xffFF6600),
              ),
            ),
            child: const Center(
              child: Text(
                'عرض التفاصيل الطلب ',
                style: TextStyle(color: Color(0xffFF6600)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Divider(color: Colors.black38),
          ),
          wraptext(
            title: 'شارع 44 - السبتية - القاهرة',
            icon: Icons.location_on_rounded,
            iconColor: Color(0xffFF6600),),
          wraptext(
              title: '20/10/2021 ، 11:00ص ',
              icon: Icons.access_time,

              iconColor: Colors.black38
          ),
          Row(
            children: [
              elevatedButton(
                  title: 'إلغاء الطلب',
                  titleColor: Colors.black,
                  ButtonColor: Colors.white70),
              const SizedBox(
                width: 20,
              ),
              elevatedButton(
                  title: 'إنهاء الطلب',
                  titleColor: Colors.white,
                  ButtonColor: const Color(0xffFF6600)),
            ],
          ),
        ],
      ),
    );
  }
  Widget elevatedButton(
      {required String title,
        required Color titleColor,
        required Color ButtonColor}) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: ButtonColor
          // side: BorderSide(
          //   color: Colors.black
          // )
        ),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: titleColor),
            ),
          ),
        ),
      ),
    );
  }
  Widget wraptext({required String title, required IconData icon,required Color iconColor}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Text(title),
          Icon(icon,color: iconColor,),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
