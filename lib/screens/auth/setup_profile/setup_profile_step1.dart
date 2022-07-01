import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step2.dart';

import 'components/linear_percent_indicator.dart';

class SetupProfileStep1 extends StatefulWidget {
  @override
  _SetupProfileStep1State createState() => _SetupProfileStep1State();
}

class _SetupProfileStep1State extends State<SetupProfileStep1> {
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
        "Step $value out of 6",
        style: TextStyle(
            color: Color(0xff676767),
            fontSize: 14,
            fontWeight: FontWeight.w500),
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
                const Text(
                  'Set up your Profile',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _stepIndicator(),
                    SizedBox(height: 60),
                    Text(
                      "Update your Details",
                      style: TextStyle(
                          color: Color(0xff676767),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      children: [
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xff63BFEE)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xffC0C0C0)),
                            ),
                            labelText: 'Full Name',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffC0C0C0)),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                obscureText: true,
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
                                  labelText: 'E-mail address (optional)',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffC0C0C0)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            IntrinsicWidth(
                              stepWidth: 100,
                              child: TextField(
                                obscureText: true,
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
                                  labelText: 'Age',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffC0C0C0)),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 22),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(42)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA6EAFD),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFB8E73),
                            Color(0xffF36D67),
                          ],
                        )),
                    // padding: EdgeInsets.only(left: 8),
                    child: const Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
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
