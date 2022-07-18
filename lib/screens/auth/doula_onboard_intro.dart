import 'package:doula/screens/auth/setup_profile/setup_profile_step1.dart';
import 'package:doula/themes.dart';
import 'package:flutter/material.dart';

import '../../components/cbutton.dart';

class DoulaOnboardIntro extends StatefulWidget {
  DoulaOnboardIntro({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _DoulaOnboardIntroState createState() => _DoulaOnboardIntroState();
}

class _DoulaOnboardIntroState extends State<DoulaOnboardIntro> {
  Widget _continueButton(BuildContext context) {
    return InkWell(
      onTap: () {
        print("continuebuttn");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SetupProfileStep1()),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Continue',
            style: TextStyle(color: Color(0xffF26966)),
          ),
          style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xfffffffff),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // side: BorderSide(
              //     color: Color(0xffF36D67), width: 2),
              shape: StadiumBorder()),
        ),
        // padding: EdgeInsets.symmetric(vertical: 13),
        // alignment: Alignment.center,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(5)),
        //     boxShadow: <BoxShadow>[
        //       BoxShadow(
        //           color: Color(0xffF26966).withAlpha(100),
        //           offset: Offset(2, 4),
        //           blurRadius: 8,
        //           spreadRadius: 2)
        //     ],
        //     color: Colors.white),
        // child: Text(
        //   'Continue',
        //   style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
        // ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'Let’s Set up your Profile \n\n',
            style: Themes().Header1.copyWith(color: Colors.white)),
        TextSpan(
          text:
              'To complete your registration, please click a selfie with your Aadhar Card visible in hand',
          style: Themes().TextSmall.copyWith(color: Colors.white, height: 1.5),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/imageDoula.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _title(),
            SizedBox(
              height: 150,
            ),
            Row(
              children: [
                Expanded(
                  // child: Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   child: OutlinedButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => SetupProfileStep1()),
                  //       );
                  //     },
                  //     child: const Text(
                  //       'Continue',
                  //       style: TextStyle(color: Color(0xffF26966)),
                  //     ),
                  //     style: OutlinedButton.styleFrom(
                  //         backgroundColor: Color(0xfffffffff),
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 50, vertical: 22),
                  //         textStyle: const TextStyle(
                  //             fontSize: 18, fontWeight: FontWeight.bold),
                  //         // side: BorderSide(
                  //         //     color: Color(0xffF36D67), width: 2),
                  //         shape: StadiumBorder()),
                  //   ),
                  // ),
                  child: CButton(
                      onTapButton: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetupProfileStep1()),
                        );
                      },
                      label: "Continue",
                      vertical: 16,
                      primary: false),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
