import 'package:doula/components/inputField.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step2.dart';

import '../../../components/cbutton.dart';
import '../../../themes.dart';
import 'components/linear_percent_indicator.dart';

class SetupProfileStep3 extends StatefulWidget {
  @override
  _SetupProfileStep3State createState() => _SetupProfileStep3State();
}

class _SetupProfileStep3State extends State<SetupProfileStep3> {
  GlobalKey<FormState> formKey = GlobalKey();
  double _initial = 0.17;

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
        "Step 3 out of 6",
        style: Themes().TextSmallLight.copyWith(color: Color(0xff404040)),
      ),
      // ElevatedButton(
      //   onPressed: () {
      //     print(double.parse(_initial.toStringAsFixed(1)));
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
                      "Update your Aadhar Card",
                      style: Themes().Heading5,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      children: [
                        CInput(labelText: "Enter Aadhar Number"),
                        CInput(labelText: "Enter Name as Aadhar Card"),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    )
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
                            builder: (context) => SetupProfileStep4()),
                      );
                    },
                    label: "Continue",
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
