import 'package:flutter/material.dart';

import '../../../home/presentation/views/widgets/custom_app_bar.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomAppBarForHomeScreen(),
          ],
        ),
      ),
    );
  }
}
