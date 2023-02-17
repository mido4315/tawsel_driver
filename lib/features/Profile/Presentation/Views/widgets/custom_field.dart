import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  late final String hint;
  late final  String prefix;
  late final   Widget? prefixIcon;
  late final   prefixIconColor;
  late final  TextEditingController Controller;
  CustomField({required this.hint,required this.prefix,this.prefixIcon,this.prefixIconColor,required this.Controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 13),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: Controller,
          style: const TextStyle(color: Color(0xff474747)),
          textAlign: TextAlign.right,
          autofocus: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey,),
            ),


            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.deepOrange,),



            ),
            hintText:hint,
            prefixText:prefix,
            prefixIcon: prefixIcon??const Text('') ,
            prefixIconColor: prefixIconColor,

          ),
        ),
      ),
    );
  }
}