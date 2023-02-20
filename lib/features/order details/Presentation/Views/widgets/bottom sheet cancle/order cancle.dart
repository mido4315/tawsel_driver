import 'package:flutter/material.dart';
import 'buttonsheet.dart';
import 'containersheet.dart';
import 'textfiledsheet.dart';
class ordercanclecontainer extends StatefulWidget {
  ordercanclecontainer({
    Key? key,

  }) : super(key: key);

  @override
  State<ordercanclecontainer> createState() => _ordercanclecontainerState();
}

class _ordercanclecontainerState extends State<ordercanclecontainer> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Container(
            height: height * .60,
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
                    ContainerSheet(choosenuser: 'العميل رفض الطلب',),
                    SizedBox(
                      height: 10,
                    ),
                    ContainerSheet(choosenuser: 'الطلب تالف',),
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
                              setState(() {
                                _isChecked = value!;
                              });
                            })
                      ],
                    ),
                    textfiledsheet(
                      text: 'ادخل العنوان',
                    ),
                     SizedBox(height: 10,),
                    Buttonsheet(
                      text: 'إرسال',
                    )
                  ]),
            )),
      ),
    );
  }
}

