import 'package:flutter/material.dart';
import 'package:tawsel_driver/features/home/presentation/views/orders_history_view.dart';

class TabBar_Button extends StatefulWidget {
  const TabBar_Button(
      {Key? key, required this.ButtonTitle, required this.color})
      : super(key: key);
  final String ButtonTitle;
  final Color color;
  @override
  State<TabBar_Button> createState() => _TabBar_ButtonState();
}

class _TabBar_ButtonState extends State<TabBar_Button> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.color,
        ),
        
        child: Center(
          child: Text(widget.ButtonTitle),
        ),
      ),
    );
  }
}
