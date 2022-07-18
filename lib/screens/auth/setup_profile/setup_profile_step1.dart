import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step2.dart';

import '../../../components/cbutton.dart';
import '../../../components/inputField.dart';
import '../../../themes.dart';
import 'components/linear_percent_indicator.dart';

class SetupProfileStep1 extends StatefulWidget {
  @override
  _SetupProfileStep1State createState() => _SetupProfileStep1State();
}

class _SetupProfileStep1State extends State<SetupProfileStep1> {
  GlobalKey<FormState> _formKey = GlobalKey();
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
        "Step $value out of 6",
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
                      "Update your Details",
                      style: Themes().Heading5,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CInput(
                            labelText: "Full Name",
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CInput(
                                  labelText: "'E-mail address (optional)'",
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              IntrinsicWidth(
                                stepWidth: 100,
                                child: CInput(
                                  labelText: "Age",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
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
                            builder: (context) => SetupProfileStep2()),
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
