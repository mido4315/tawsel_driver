import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomAppBarForHomeScreen extends StatelessWidget {
  const CustomAppBarForHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kNotificationPage);
        },
        icon: SvgPicture.asset("images/notifications icon2.svg",height: 500,width: 100,),
      ),
      title: const Text(
        " محمد شادي ",
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
        backgroundColor: Colors.white,
        child: Image.asset("images/Profile Image/NoPath - Copy.png"),
      ),
    );
  }
}
