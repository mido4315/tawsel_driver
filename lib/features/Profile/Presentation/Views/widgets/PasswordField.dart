import 'package:flutter/material.dart';
class PasswordField extends StatefulWidget {

  const PasswordField({Key? key}) : super(key: key);


  @override

  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  late bool _showEye = false;

  late bool _PasswordIsEncrypted = true;

  late String _Password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: SizedBox(
        height: 60,
        width: 350,
        child: TextField(
          textAlign: TextAlign.right,
          style: const TextStyle(color: Color(0xff474747)),
          autofocus: false,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: _showEye
                  ? GestureDetector(
                child: _PasswordIsEncrypted
                    ? Icon(Icons.visibility,color: Colors.grey,)
                    : Icon(Icons.visibility_off,color: Colors.grey,),
                onTap: (){
                  setState(() {
                    _PasswordIsEncrypted = !_PasswordIsEncrypted;
                  });
                },
              )
                  : null
          ),
          obscureText: _showEye ? _PasswordIsEncrypted : true,
          onChanged: (enteredPassword){
            _Password = enteredPassword;
            if(enteredPassword.isEmpty){
              setState(() {
                _showEye =false;
              });

            } else{
              if(!_showEye){
                setState(() {
                  _showEye = !_showEye;
                });
              }

            }
          },

        ),
      ),
    );
  }
}
