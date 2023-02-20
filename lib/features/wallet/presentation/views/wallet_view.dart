import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views/widgets/custom_app_bar.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              CustomAppBarForHomeScreen(),
              Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height ,
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              ),
              ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.90,
                        height: MediaQuery.of(context).size.height*0.16,
                        decoration: const BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),

                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ImageIcon(
                                AssetImage("images/Cash.png"),
                                color: Colors.white,
                                size: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25,left: 130),
                              child: Column(
                                children: [
                                  Text('1400 ج.م',style: TextStyle(color: Colors.white,fontSize: 24),textDirection: TextDirection.rtl),
                                  Text('الأستحفاق الأخير',style: TextStyle(color: Colors.white,fontSize: 14),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280,top: 20),
                      child: Text('أخر العمليات',),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: 300,
                        child: ListView.separated(

                          shrinkWrap: true,
                          itemCount: 9,
                          itemBuilder:
                              (context,int index){
                            return const ListTile(
                              title: Text('رقم الطلب #4231',textAlign: TextAlign.end),
                              subtitle: Text('03.10.2020',textAlign: TextAlign.end),
                              leading: Text('+40',style: TextStyle(color: Colors.black),),
                            );

                          },
                          separatorBuilder: (BuildContext context, int index) {
                           return Divider(height: 5,);
                            },
                        ),
                      ),
                    ),
                   DottedLine(
                    dashColor: Colors.grey,
                     dashGapLength: 7,
                     lineThickness: 2,
                   ),
                   SizedBox(height: 7,),
                   Row(
                     textDirection: TextDirection.rtl,
                     children: [
                       SizedBox(width: 12,),
                       Text(':الاجمالي'),
                       SizedBox(width: 262,),
                       Text('ج.م1500')
                     ],
                   ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
