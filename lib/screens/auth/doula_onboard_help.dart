import 'package:doula/screens/auth/onboard_welcome_page.dart';
import 'package:flutter/material.dart';

class DoulaOnboardHelp extends StatelessWidget {
  const DoulaOnboardHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250.0), // here the desired height,
          child: AppBar(
            flexibleSpace: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFD9375),
                      Color(0xFFF26966),
                    ],
                  )),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    // textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text:
                            'Hi Doula name, we are still verifying your account\n\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'It will take 24 hours.\n',
                        style: TextStyle(
                            color: Colors.white, fontSize: 14, height: 1.5),
                      ),
                      TextSpan(
                        text:
                            'We will notify you once we have verified your account',
                        style: TextStyle(
                            color: Colors.white, fontSize: 14, height: 1.5),
                      ),
                    ]),
                  ),
                ),
              ],

              // )
              // ),
            ),
            backgroundColor: const Color(0xFFFAFAFA),
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: new Icon(
                Icons.arrow_back,
                color: Color(0xFFFFFFFF),
              ),
            ),
            actions: <Widget>[
              TextButton(
                // textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  "HELP",
                  style: TextStyle(color: Colors.white),
                ),
                // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Frequently asked questions",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff676767)),
                    ),
                    Container(
                        // width: 320,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'When will i hear back from Motherly?',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                  color: Color(0xff959595), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xffF36D67)),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 8),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnboardWelcomePage()),
                          );
                        },
                        child: const Text(
                          'Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 22),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            side:
                                BorderSide(color: Color(0xffF36D67), width: 1),
                            shape: StadiumBorder()),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
