import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/bottom%20sheet%20cancle/containersheet.dart';
class CancleAvater extends StatelessWidget {
   CancleAvater() ;
  ContainerSheet ?text ;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),//or 15.0
        child: Container(
          height: 54.0,
          width: 55.0,
          color: Color(0xffFF0E58),
          child: Icon(Icons.close, color: Colors.white, size: 50.0),
        ),
      ),
      title: Text("سبب الالغاء",textDirection: TextDirection.rtl,),
      subtitle: Text("${text!.choosenuser}",textDirection: TextDirection.rtl,),
    );
  }
}
