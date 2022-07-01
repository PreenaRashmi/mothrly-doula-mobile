import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
// import 'package:gyn/screens/auth/setup_profile/setup_profile_step1.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class NumberList {
  String number;
  int index;
  NumberList({required this.number, required this.index});
}
// enum SingingCharacter { lafayette, jefferson }

class _SelectLanguageState extends State<SelectLanguage> {
  // SingingCharacter? _character = SingingCharacter.lafayette;
  // Default Radio Button Selected Item.
  String radioItemHolder = 'One';

  // Group Value for Radio Button.
  int id = 1;

  List<NumberList> nList = [
    NumberList(
      index: 1,
      number: "English",
    ),
    NumberList(
      index: 2,
      number: "Hindi",
    ),
    NumberList(
      index: 3,
      number: "Marathi",
    ),
    NumberList(
      index: 4,
      number: "Tamil",
    ),
    NumberList(
      index: 5,
      number: "Gujarathi",
    ),
    NumberList(
      index: 6,
      number: "Telugu",
    ),
    NumberList(
      index: 7,
      number: "Urdu",
    ),
    NumberList(
      index: 8,
      number: "Punjabi",
    ),
    NumberList(
      index: 9,
      number: "Marathi",
    ),
  ];
  GlobalKey<FormState> formKey = GlobalKey();
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Language',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Form(
                  key: formKey,
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(
                  //           width: 0.5, color: const Color(0xFF7C7C7C)),
                  //     ),
                  //   ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: nList
                            .map((data) => Transform.scale(
                                  scale: 1.2,
                                  child: RadioListTile(
                                    title: Align(
                                      child: Text(
                                        "${data.number}",
                                        style:
                                            TextStyle(color: Color(0xff8B8B8B)),
                                      ),
                                      alignment: Alignment(-1.1, 0),
                                    ),
                                    groupValue: id,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItemHolder = data.number;
                                        id = data.index;
                                      });
                                    },
                                  ),
                                ))
                            .toList(),
                      ),
                      // ListTile(
                      //   // dense: true,
                      //   contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                      //   title: const Text('English'),
                      //   leading: Transform.scale(
                      //     scale: 1.2,
                      //     child: Radio<SingingCharacter>(
                      //       fillColor: MaterialStateColor.resolveWith(
                      //           (states) => Color(0xffF46F68)),
                      //       value: SingingCharacter.lafayette,
                      //       groupValue: _character,
                      //       onChanged: (SingingCharacter? value) {
                      //         setState(() {
                      //           _character = value;
                      //         });
                      //       },
                      //     ),
                      //   ),
                      // ),
                      // ListTile(
                      //   contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                      //   title: const Text('Hindi'),
                      //   leading: Transform.scale(
                      //     scale: 1.2,
                      //     child: Radio<SingingCharacter>(
                      //       value: SingingCharacter.jefferson,
                      //       groupValue: _character,
                      //       onChanged: (SingingCharacter? value) {
                      //         setState(() {
                      //           _character = value;
                      //         });
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  // ),
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
