import 'package:doula/screens/auth/select_your_skillsets.dart';
import 'package:doula/screens/auth/set_consultation_fee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step2.dart';

// import '../add_session_timings.dart';
import '../../../components/cbutton.dart';
import '../../../components/inputField.dart';
import '../../../themes.dart';
import 'components/linear_percent_indicator.dart';

class SetupProfileStep6 extends StatefulWidget {
  @override
  _SetupProfileStep6State createState() => _SetupProfileStep6State();
}

class _SetupProfileStep6State extends State<SetupProfileStep6> {
  GlobalKey<FormState> formKey = GlobalKey();
  double _initial = 1.0;

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
        "Step 6 out of 6",
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
                      "Enter Bank Account Details ",
                      style: Themes().Heading5,
                    ),
                    Container(
                        // padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Column(
                      children: [
                        CInput(
                            labelText: "Enter Account Number",
                            icon: SvgPicture.asset(
                              "assets/icons/bankIcon.svg",
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InputDecorator(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xff63BFEE)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xffC0C0C0)),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    hint: Text("Enter IFSC Code",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xffC0C0C0))),
                                    //value: City,
                                    isDense: true,
                                    isExpanded: true,
                                    items: [
                                      // DropdownMenuItem(
                                      //     child: Text("Select Gender"),
                                      //     value: "Select Gender"),
                                      // DropdownMenuItem(
                                      //     child: Text("Male"), value: "Male"),
                                      // DropdownMenuItem(
                                      //     child: Text("Female"), value: "Female"),
                                    ],
                                    onChanged: (newValue) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                                //],
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xff63BFEE)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xffC0C0C0)),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    hint: Text("Bank Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xffC0C0C0))),
                                    //value: City,
                                    isDense: true,
                                    isExpanded: true,
                                    items: [
                                      // DropdownMenuItem(
                                      //     child: Text("Select Gender"),
                                      //     value: "Select Gender"),
                                      // DropdownMenuItem(
                                      //     child: Text("Male"), value: "Male"),
                                      // DropdownMenuItem(
                                      //     child: Text("Female"), value: "Female"),
                                    ],
                                    onChanged: (newValue) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                                //],
                              ),
                            ),
                          ],
                        ),
                        CInput(
                          labelText: "Enter Branch Name",
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
                            builder: (context) => SelectYourSkillsets()),
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
