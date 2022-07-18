import 'package:doula/screens/home/home.dart';
import 'package:flutter/material.dart';

class OnboardWelcomePage extends StatefulWidget {
  OnboardWelcomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _OnboardWelcomePageState createState() => _OnboardWelcomePageState();
}

class _OnboardWelcomePageState extends State<OnboardWelcomePage> {
  Widget _continueButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: const Text(
            'Go Online',
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
      ),
    );
  }

  Widget _title() {
    return RichText(
      // textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text:
              'Congratulations, your account has been verified. We welcome you onboard! \n\n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: 'Click on ‘Go online’ button to start availing your services',
          style: TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
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
            image: new AssetImage("assets/images/goOnline.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _title(),
            SizedBox(
              height: 90,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: const Color(0xFF7C7C7C)),
                ),
              ),
              child: Text(
                "You can choose to stop availing services by switch off the toggle button in the settings panel",
                style:
                    TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _continueButton(),
          ],
        ),
      ),
    );
  }
}
