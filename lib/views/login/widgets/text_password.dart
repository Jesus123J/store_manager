import 'package:flutter/material.dart';

class TextPassword extends StatefulWidget{
  
  @override
   _TextPassword createState() => _TextPassword();

}

class _TextPassword extends State<TextPassword> {
   
  bool  _isObscured = true;
  
  @override
  Widget build(BuildContext context) {
     return TextField(
         obscureText: _isObscured,
        decoration: InputDecoration(
           helperText: "CONTRASEÑA",
          suffixIcon: IconButton(onPressed: (){
             setState(() {
                _isObscured = !_isObscured;
             });
          },
              icon: Icon( _isObscured ? Icons.visibility : Icons.visibility_off))
        ),
     );
  }
}