import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:doula/screens/auth/setup_profile/setup_profile_step4.dart';

import 'components/linear_percent_indicator.dart';

class SetupProfileStep3 extends StatefulWidget {
  @override
  _SetupProfileStep3State createState() => _SetupProfileStep3State();
}

class _SetupProfileStep3State extends State<SetupProfileStep3> {
  GlobalKey<FormState> formKey = GlobalKey();
  double _initial = 0.51;

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
        "Step 3 out of 6 ",
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
                      "Add Clinic to your Profile",
                      style: TextStyle(
                          color: Color(0xff676767),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Column(
                          children: [
                            Text(
                              "Clinic owners will have to provide the proof of their ownership.",
                              style: TextStyle(color: Color(0xff969696)),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Visiting consultants will not be able to edit information for their clinics. They can however add multiple and delete clinics as per their offline agreements.",
                              style: TextStyle(color: Color(0xff969696)),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            )),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SecondRoute()),
                // );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text('Add as a Visiting Clinic'),
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
            SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetupProfileStep4()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Text('Continue'),
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
