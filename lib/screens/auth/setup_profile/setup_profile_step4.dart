import 'package:doula/screens/auth/setup_profile/setup_profile_step5_Pan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step3.dart';

import '../../../components/cbutton.dart';
import '../../../themes.dart';
import 'components/linear_percent_indicator.dart';

class SetupProfileStep4 extends StatefulWidget {
  @override
  _SetupProfileStep4State createState() => _SetupProfileStep4State();
}

class _SetupProfileStep4State extends State<SetupProfileStep4> {
  GlobalKey<FormState> formKey = GlobalKey();
  double _initial = 0.68;

  Widget _stepIndicator() {
    String value = (_initial * 6).toString()[0];
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // ClipRRect(
      //   borderRadius: BorderRadius.circular(8),
      //   child:
      LinearPercentIndicator(
        lineHeight: 10.0,
        percent: double.parse(_initial.toStringAsFixed(1)),
        padding: const EdgeInsets.symmetric(horizontal: 0),
        barRadius: const Radius.circular(16),
        progressColor: Color(0xffF47169),
        backgroundColor: Colors.grey[300],
      ),

      SizedBox(height: 8),
      Text(
        "Step 4 out of 6 ",
        style: Themes().TextSmallLight.copyWith(color: Color(0xff404040)),
      ),
      // ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       _initial = _initial + 0.17;
      //     });
      //   },
      //   child: null,
      // )
    ]);
  }

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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Set up your Profile',
                  style: Themes().Heading2,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _stepIndicator(),
                    SizedBox(height: 60),
                    Text(
                      "Upload Aadhar Card",
                      style: Themes().Heading5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Column(
                          children: [
                            Text(
                              "To complete your registration, please click a selfie with your Aadhar Card visible in hand.",
                              style: Themes().TextSmallLight,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 180,
                              height: 180,
                              child: FittedBox(
                                child: Image.asset(
                                  'assets/images/imagePreview.png',
                                  width: 100,
                                  height: 100,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ))
                  ],
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
                        MaterialPageRoute(
                            builder: (context) => SetupProfileStep5_Pan()),
                      );
                    },
                    label: "Upload Aadhar card",
                    vertical: 16,
                    primary: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
