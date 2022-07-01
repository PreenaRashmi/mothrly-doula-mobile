import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step4.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step6.dart';

import 'components/linear_percent_indicator.dart';

class SetupProfileStep5_Pan extends StatefulWidget {
  @override
  _SetupProfileStep5_PanState createState() => _SetupProfileStep5_PanState();
}

class _SetupProfileStep5_PanState extends State<SetupProfileStep5_Pan> {
  GlobalKey<FormState> formKey = GlobalKey();
  double _initial = 0.85;

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
        progressColor: Colors.blue[400],
        backgroundColor: Colors.grey[300],
      ),

      SizedBox(height: 8),
      Text(
        "Step 5 out of 6 ",
        style: TextStyle(
            color: Color(0xff676767),
            fontSize: 14,
            fontWeight: FontWeight.w500),
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
                      "Update Pan Card",
                      style: TextStyle(
                          color: Color(0xff676767),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Column(children: [
                          TextField(
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
                                labelText: 'Enter Pan Number',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xffC0C0C0))),
                          ),
                        ]))
                  ],
                ),
              ],
            )),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetupProfileStep6()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text('Verify & Proceed'),
                width: double.infinity,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff63BFEE),
                  shape: StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}