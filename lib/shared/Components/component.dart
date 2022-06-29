
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefultBottom({
  required double width,
  required Color background,
  required Function onpresse,
  required String text,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(12), color: background,),
      child: MaterialButton(
        onPressed: () {
          onpresse();
        },
        child: Text(text,textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );

Widget DefultTextButtom({
  required Function function,
  required String text,
  required Color color,
}) =>
    TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(color:color, fontSize: 15),
        ));

Widget DefultTextFormField({
  required String text,
  required TextInputType type,
  required TextEditingController controle,
  required String ?Function(String?) valaditor,
  Function(String?)?onchange,
  Function(String?)?onsubmitted,
  Function? suficepress,
  IconData? sufex,
  bool textScure = false,
}) =>
    TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey[500]),
            hintText:text ,
            labelStyle: TextStyle(color: Colors.grey),
            suffixIcon: sufex != null
                ? IconButton(
                onPressed: () {
                  suficepress!();
                },
                icon: Icon(sufex, color: Colors.grey))
                : null,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color:Colors.grey,
                  width: 2,
                )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
                )),
        keyboardType: type,
        controller: controle,
        onChanged: onchange,
        onFieldSubmitted: onsubmitted,
        obscureText: textScure,
        validator: valaditor
    );

Widget DefultBottomtwo({
  required double width,
  required Color background,
  required Function onpresse,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: () {
          onpresse();
        },
        child: Text(text,textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );