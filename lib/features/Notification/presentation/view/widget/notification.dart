import 'package:flutter/material.dart';
class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "الاشعارات",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder:
          (context,int index){
    return  ListTile(
    title: const Text('تم رفض الطلب من قبل العميل',textAlign: TextAlign.end),
    subtitle: const Text('03.10.2020',textAlign: TextAlign.end),
      trailing: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.red,
        child: Image.asset('images/notification/fi-rr-cross-small.png',width: 25),
      ),
    );

    },
      ),
    );
  }
}
