import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tawsel_driver/core/utils/app_router.dart';

class Custom_ListTitle extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String imageUrl;
  final bool leading_choise;
  final leading_color;
  final leading_text;
  final page;

  Custom_ListTitle(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.imageUrl,
        required this.leading_choise,
      this.page,

      this.leading_text, this.leading_color});
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        mainTitle,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Color(0xff000000),
        ),
      ),
      subtitle: Text(
        subTitle,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Color(0xff464646),
        ),
      ),
      trailing: CircleAvatar(
        radius: 25,
        child: Image(
          height: 60,
          fit: BoxFit.fitWidth,
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
      leading: leading_choise
          ? GestureDetector(
              onTap: () {
                GoRouter.of(context).go(page);
              },
              child: SvgPicture.asset('images/notifications icon2.svg'),
            )
          : Text(
              leading_text,
              style: TextStyle(
                color: leading_color,
                fontSize: 18
              ),
            ),
    );
  }
}
