import 'package:flutter/material.dart';

import 'buttonsheet.dart';
import 'containersheet.dart';
import 'textfiledsheet.dart';

class ordercanclecontainer extends StatelessWidget {
  ordercanclecontainer({
    Key? key,
    required this.height,
  }) : super(key: key);
  bool _isChecked = false;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
          height: height * .58,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          ' سبب الالغاء',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'cairo'),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.clear,
                              size: 25,
                            )),
                      ],
                    ),
                  ),
                  containersheet(text: 'العميل رفض الطلب',),
                  SizedBox(
                    height: 10,
                  ),
                  containersheet(text: 'الطلب تالف',),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('سبب اخر',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                      ),),
                      Checkbox(
                          activeColor: Color(0xFFffffff),
                          side: BorderSide(color: Colors.deepOrange),
                          checkColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          value: _isChecked,
                          onChanged: (value) {
                            _isChecked = value!;
                          })
                    ],
                  ),
                  textfiledsheet(
                    text: 'ادخل العنوان',
                  ),
                  SizedBox(height: 20,),
                  Buttonsheet(
                    text: 'إرسال',
                  )
                ]),
          )),
    );
  }
}

