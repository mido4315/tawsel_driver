import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/PasswordField.dart';
class ChangePassword extends StatefulWidget {

  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _showEye = false;

  bool _PasswordIsEncrypted = true;

  String _Password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              'تغيير الرقم السري',
              style: TextStyle(
                color: Color(0xff191919),
              ),
              textAlign: TextAlign.right,
              softWrap: false,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("images/notifications icon2.svg"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30,top: 10,bottom: 15),
              child: Text('الرقم السري القديم',textAlign: TextAlign.right,),
            ),
            PasswordField(),
            Padding(
              padding: const EdgeInsets.only(right: 30,top: 10,bottom: 15),
              child: Text('الرقم السري الجديد',textAlign: TextAlign.right,),
            ),
            PasswordField(),
            Padding(
              padding: const EdgeInsets.only(right: 30,top: 10,bottom: 15),
              child: Text('تأكيد الرقم السري الجديد',textAlign: TextAlign.right,),
            ),
            PasswordField(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height:
                  MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff15c975),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'حفظ التغييرات',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}