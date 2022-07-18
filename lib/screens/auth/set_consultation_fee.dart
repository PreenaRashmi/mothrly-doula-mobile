import 'package:doula/screens/auth/add_session_timings.dart';
import 'package:doula/screens/auth/doula_onboard_help.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:doula/screens/auth/enter_otp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SetConsultationFee extends StatefulWidget {
  @override
  _SetConsultationFeeState createState() => _SetConsultationFeeState();
}

class _SetConsultationFeeState extends State<SetConsultationFee> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController _controller = TextEditingController();
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
                  'Set your service rate',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                    "Your client will see this rate on your profile and in search results once you publish your profile.",
                    style: TextStyle(
                        color: Color(0xff868585),
                        fontWeight: FontWeight.w400,
                        height: 1.3)),
                SizedBox(height: 70),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: '',
                    suffixIcon: Icon(
                      Icons.currency_rupee_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 14,
                      color: Color(0xff4CC98A),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Mothrly Service fee",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    "The service fee is 20% when you begin a contract with a new client.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontFamily: 'sans-serif-light',
                        color: Color(0xff282828))),
                SizedBox(height: 70),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: '',
                    // prefixIcon: Icon(
                    //   Icons.remove_outlined,
                    //   color: Colors.black,
                    // ),
                    suffixIcon: Icon(
                      Icons.currency_rupee_outlined,
                      color: Colors.black,
                    ),
                    // suffixIcon: SvgPicture.asset(
                    //   "assets/icons/rupee.svg",
                    // ),
                  ),
                ),
                // RichText(
                //     text: TextSpan(children: [
                //   const TextSpan(
                //       text:
                //           "To confirm your account, enter the 4-digit code sent to ",
                //       style: TextStyle(
                //           color: Color(0xff868585),
                //           fontWeight: FontWeight.w500)),
                //   TextSpan(
                //       text: "+91 - 9876543211",
                //       style: TextStyle(
                //           fontSize: 14,
                //           color: Color(0xff676767),
                //           fontWeight: FontWeight.w500))
                // ], style: TextStyle(height: 1.5))),
              ],
            )),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoulaOnboardHelp()),
                      );
                    },
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
