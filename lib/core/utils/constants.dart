
import 'dart:ui';

import 'package:flutter/cupertino.dart';

const kButtonColor1 = Color(0xffECECEC);
const kTextGrey = Color(0xff535353);
const kBorderColor = Color(0xffE1DADA);
const kSubTitle = Color(0xff6B6B6B);

class PageSize{
  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}


