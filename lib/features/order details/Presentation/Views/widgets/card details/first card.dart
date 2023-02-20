import 'package:flutter/material.dart';

class containercard extends StatelessWidget {
  containercard({super.key, required, });

@override
Widget build(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Center(
    child: Container(
      height: height*.27,
      width: width*.97,
      child: Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color:Colors.white )
        ),
        elevation: 9 ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('كاش',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange
                ),),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('كريسبي&كرانشي',style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),),
                          Row(
                            children: [
                              Text('شارع 44- السبتيه-القاهره',style: TextStyle(

                            color: Colors.grey
                          ),),
                              Icon(Icons.place,color: Colors.grey,)
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: CircleAvatar(
                          child:Image.asset( 'images/chec.png',fit: BoxFit.contain,),
                          backgroundColor: Color(0xFFffffff),
                          radius: 28.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(thickness: 1,indent: 17,endIndent: 17,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('شارع 44- السبتيه-القاهره',style: TextStyle(
                  fontWeight: FontWeight.w500
              ),),
                  SizedBox(width: 5,),
                  Icon(Icons.place,color: Colors.deepOrangeAccent,)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('11:00ص , 20/10/2021 ',textDirection:TextDirection.rtl,style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(width: 5,),
                  Icon(Icons.access_time_outlined,color: Colors.grey)
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
