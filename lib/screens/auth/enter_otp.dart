import 'package:doula/screens/auth/select_language.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step1.dart';

import '../../components/cbutton.dart';
import '../../themes.dart';

class EnterOtpPage extends StatefulWidget {
  @override
  _EnterOtpPageState createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter OTP',
                  style: Themes().Heading2,
                ),
                SizedBox(height: 8),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text:
                          "To confirm your account, enter the 4-digit code sent to",
                      style: Themes().TextSmall),
                  TextSpan(
                      text: "+91 - 9876543211",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff676767),
                          fontWeight: FontWeight.w500))
                ], style: TextStyle(height: 1.5))),
                SizedBox(height: 80),
                Form(
                  key: formKey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 64,
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff63BFEE)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE5E5E5)),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff63BFEE)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE5E5E5)),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        height: 70,
                        width: 64,
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff63BFEE)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE5E5E5)),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff63BFEE)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE5E5E5)),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Didn’t recieve it yet?",
                      style: Themes().TextSmall),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(width: 10)),
                  TextSpan(
                      text: "Resend Now",
                      style:
                          Themes().TextSmall.copyWith(color: Color(0xffF36C67)))
                ], style: TextStyle(height: 1.5))),
                SizedBox(
                  height: 45,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "We have re-sent the OTP. Please check your promotional messages",
                        style: Themes().TextSmallBold,
                      ),
                    )
                  ],
                )
              ],
            )),
            Row(
              children: [
                Expanded(
                  child: CButton(
                    onTapButton: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectLanguage()),
                      );
                    },
                    primary: true,
                    label: "Verify & Proceed",
                    vertical: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Call me instead",
                style: TextStyle(
                    color: Color(0xffF36C67),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
