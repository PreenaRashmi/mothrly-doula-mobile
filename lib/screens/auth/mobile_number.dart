import 'package:doula/themes.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:doula/screens/auth/enter_otp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../components/cbutton.dart';

class EnterMobileNumberPage extends StatefulWidget {
  @override
  _EnterMobileNumberPageState createState() => _EnterMobileNumberPageState();
}

class _EnterMobileNumberPageState extends State<EnterMobileNumberPage> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Mobile Number',
                  style: Themes().Heading2,
                ),
                SizedBox(height: 8),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text:
                          "To confirm your account, enter the 4-digit code sent to ",
                      style: Themes().TextSmall),
                  TextSpan(
                      text: "+91 - 9876543211",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff6F6F6F),
                          fontWeight: FontWeight.w500))
                ], style: TextStyle(height: 1.5))),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 80),
                      IntlPhoneField(
                        decoration: InputDecoration(
                            floatingLabelStyle:
                                TextStyle(color: Color(0xffF46F68)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            labelText: 'Enter Mobile Number',
                            labelStyle: Themes().PlaceholderText,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xffF46F68)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xffC0C0C0)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Color(0xffff0033)))),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Row(
              children: [
                Expanded(
                  child: CButton(
                    onTapButton: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EnterOtpPage()),
                      );
                    },
                    primary: true,
                    label: "Get OTP",
                    vertical: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
