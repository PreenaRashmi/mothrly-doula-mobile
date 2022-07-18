import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes.dart';

class CInput extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final SvgPicture? icon;
  // final TextEditingController controller;

  const CInput(
      {Key? key, required this.labelText, this.obscureText = false, this.icon
      // required this.controller,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        validator: (input) {
          if (obscureText) {
            if (input!.length < 4) {
              return "Password should be at-least 4 characters";
            }
          } else if (input!.isEmpty) {
            return 'Enter $labelText';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          labelText: labelText,
          labelStyle: Themes().PlaceholderText,
          floatingLabelStyle: TextStyle(color: Color(0xffF46F68)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color(0xffF47169)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color.fromRGBO(149, 149, 149, 0.26)),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Color(0xffff0033))),
          suffixIconConstraints: BoxConstraints(
            minWidth: 2,
            minHeight: 2,
          ),
          suffixIcon: InkWell(
              child: new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: new SizedBox(
              child: icon,
            ),
          )),
        ),

        // controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}
