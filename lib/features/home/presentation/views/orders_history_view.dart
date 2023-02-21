import 'package:flutter/material.dart';
import 'package:tawsel_driver/core/utils/constants.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/AllOrder.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/CurrentOrder.dart';
import 'package:tawsel_driver/features/home/presentation/views/Order_TabBarView/NewOrder.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/Custom_ListTile.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/NewOrderCard.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/current_order_card.dart';
import 'package:tawsel_driver/features/home/presentation/views/widgets/tabBar_Button.dart';
import 'widgets/current_order_list_view.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/history_buttons_list_view.dart';

class OrdersHistoryView extends StatefulWidget {
  const OrdersHistoryView({Key? key}) : super(key: key);

  @override
  State<OrdersHistoryView> createState() => _OrdersHistoryViewState();
}

TabController? tabController ;
int TabBarPage=0;
bool color =false;
class _OrdersHistoryViewState extends State<OrdersHistoryView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
     tabController=TabController(length: 3, vsync: this,initialIndex: TabBarPage);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: PageSize.height(context)*0.19,
              color: Color(0xffF1F4F3),
              child: Column(
                children: [
                  Custom_ListTitle(
                    mainTitle: 'محمد شادي',
                    subTitle: 'شارع10-باب الشعرية-القاهرة',
                    imageUrl: 'assets/image/driverimage.png',
                    page: '',
                    leading_choise: true,
                  ),
                  SizedBox(height: 10,),
                  TabBar(
                    controller: tabController,
                    onTap: (value){
                      setState(() {
                        TabBarPage=value;
                      });

                    },
                    tabs: [
                      //
                      TabBar_Button(ButtonTitle: 'الطلبات الحالية', color: TabBarPage==0?Color(0xffFF6600):Color(0xffFFFFFFF)),
                      TabBar_Button(ButtonTitle: 'طلبات جديدة',color: TabBarPage==1?Color(0xffFF6600):Color(0xffFFFFFFF)),
                      TabBar_Button(ButtonTitle: 'كل الطلبات',color: TabBarPage==2?Color(0xffFF6600):Color(0xffFFFFFFF)),
                    ],
                    //unselectedLabelColor: Colors.white70,
                    labelColor: Colors.black,
                    //dividerColor: Colors.yellowAccent,
                    indicatorColor: Color(0xffF1F4F3),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CurrentOrder(),
                  NewOrder(),
                  AllOrder(),
                ],
              ),
              //child: CurrentOrder(),
              //child: NewOrder(),
              // child: SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       NewOrderCard(),
              //       NewOrderCard(),
              //       NewOrderCard(),
              //       NewOrderCard(),
              //     ],
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
