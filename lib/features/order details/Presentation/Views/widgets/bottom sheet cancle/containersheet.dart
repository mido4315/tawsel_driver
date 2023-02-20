import 'package:flutter/material.dart';

class ContainerSheet extends StatefulWidget {
  ContainerSheet({super.key, required, required this.choosenuser});

  String? choosenuser;

  @override
  State<ContainerSheet> createState() => _ContainerSheetState();
}

class _ContainerSheetState extends State<ContainerSheet> {
  bool _isChecked = false;
Color color=const Color(0xFFffffff);
bool ispressed=false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: GestureDetector(
        onTap: (){
        setState(() {
          ispressed =!ispressed;
          if(ispressed ==true){
            _isChecked=true;
          }else{
            _isChecked=false;
          }

        });
        },
        child: Container(
          decoration: BoxDecoration(
              color: ispressed?Colors.deepOrangeAccent:color,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(5)),
          width: 400,
          height: 55,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${widget.choosenuser}",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  Checkbox(
                      activeColor: const Color(0xFFffffff),
                      side: const BorderSide(color: Colors.deepOrange),
                      checkColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      value: _isChecked,
                      onChanged: (value) {

                      })
                ],
              )),
        ),
      ),
    );
  }
}
