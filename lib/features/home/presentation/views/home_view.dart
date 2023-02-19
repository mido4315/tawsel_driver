import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'widgets/current_order_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/order_now_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

bool isSwitchOn = true;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF1F4F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.purpleAccent,
            child: Column(
              children: [
                CustomAppBarForHomeScreen(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        //blurStyle: BlurStyle.normal
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterSwitch(
                        activeColor: Color(0xffFF6600),
                        height: 30,
                        width: 50,
                        value: isSwitchOn,
                        onToggle: (value) {
                          setState(() {
                            isSwitchOn = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: width * 0.5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'حالة العمل ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: ('Cairo'),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          isSwitchOn
                              ? Text(
                                  'متصل الان',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xffFF6600),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: ('Cairo')),
                                )
                              : Text(
                                  'غير متوفر',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: ('Cairo')),
                                )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  height: height * 0.1,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        //blurStyle: BlurStyle.normal
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ' المكان الحالي ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                            fontFamily: ('Cairo')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            ' شارع 10 - باب الشعرية - القاهرة',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff4E4E4E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            size: 23,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 0, right: 10, top: 10),
                  width: width,
                  height: 600,
                  // color: Colors.purple,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          offset: Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          //blurStyle: BlurStyle.normal
                        )
                      ]),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'الطلبات الحالية',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: height * 0.3,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                offset: Offset(1, 3),
                                spreadRadius: 3,
                                blurRadius: 2,
                                //blurStyle: BlurStyle.normal
                              )
                            ]),
                        child: Column(
                          children: [
                            ListTile(
                              leading: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'كاش ',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xffFF6600)),
                                ),
                              ),
                              title: const Text(
                                "  كريسبي , كرانشي  ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff0D0D0D),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "شارع10 - باب الشعرية - القاهرة",
                                    textAlign: TextAlign.right,
                                  ),
                                  Icon(Icons.location_on),
                                ],
                              ),
                              trailing: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    "assets/image/HomeView/fristorder.png"),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('open Order Detail Page'),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Center(
                                child: Text(
                                  'عرض التفاصيل الطلب ',
                                  style: TextStyle(color: Color(0xffFF6600)),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                  color: Color(0xffFF6600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              width: width * 0.9,
                              child: Divider(color: Colors.black12),
                            ),
                            wraptext(
                                title: 'شارع 44 - السبتية - القاهرة',
                                icon: Icons.location_on_rounded),
                            wraptext(
                                title: '20/10/2021 ، 11:00ص ',
                                icon: Icons.access_time),
                            Row(
                              children: [
                                elevatedButton(
                                    title: 'إلغاء الطلب',
                                    titleColor: Colors.black,
                                    ButtonColor: Colors.white70),
                                SizedBox(
                                  width: 20,
                                ),
                                elevatedButton(
                                    title: 'إنهاء الطلب',
                                    titleColor: Colors.white,
                                    ButtonColor: Color(0xffFF6600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                offset: Offset(1, 3),
                                spreadRadius: 3,
                                blurRadius: 2,
                                //blurStyle: BlurStyle.normal
                              )
                            ]),
                        child: const ListTile(
                          leading: Icon(Icons.library_books,size: 40,color: Colors.blue,),
                          title: Text(
                            " 45 طلب   ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          subtitle: Text(
                            'عدد الطلبات ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                             // fontSize: 13
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                offset: Offset(1, 3),
                                spreadRadius: 3,
                                blurRadius: 2,
                                //blurStyle: BlurStyle.normal
                              )
                            ]),
                        child: const ListTile(
                          leading: Icon(Icons.attach_money,size: 40,color: Color(0xffFF6600),),
                          title: Text(
                            " 1.200 ج.م   ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFF6600),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          subtitle: Text(
                            'المستحقات المطلوبة ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              // fontSize: 13
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: titleColor),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(primary: ButtonColor
            // side: BorderSide(
            //   color: Colors.black
            // )
            ),
      ),
    );
  }

  Widget wraptext({required String title, required IconData icon}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Text(title),
          Icon(icon),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
