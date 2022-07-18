import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Function()? onTapButton;
  final String label;
  final IconData? icon;
  final Color? color;
  final double? vertical;
  final double? horizontal;
  final bool? primary;
  // final List<Color> bgColor;

  const CButton(
      {Key? key,
      required this.label,
      required this.onTapButton,
      this.icon,
      this.color,
      this.horizontal,
      this.vertical,
      this.primary
      // required this.bgColor
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.orange,
      onTap: onTapButton,

      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(42)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xffA6EAFD),
            //   ),
            // ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  primary == true ? Color(0xffFB8E73) : Color(0xffffffff),
                  primary == true ? Color(0xffF36D67) : Color(0xffffffff),
                ])),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: vertical != null ? vertical!.toDouble() : 6.0,
          horizontal: horizontal != null ? horizontal!.toDouble() : 0.0,
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: primary == true ? Colors.white : Color(0xffF26966),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.0),
        ),
      ),
    );
  }
}
