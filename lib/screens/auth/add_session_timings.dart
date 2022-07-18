import 'package:doula/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
//import 'package:chips_choice/chips_choice.dart';
import 'package:doula/main.dart';

class AddSessionTimings extends StatefulWidget {
  const AddSessionTimings({Key? key}) : super(key: key);

  @override
  _AddSessionTimingsState createState() => _AddSessionTimingsState();
}

class _AddSessionTimingsState extends State<AddSessionTimings> {
  bool status = true;
  final formKey = GlobalKey<FormState>();
  // late List<String> formValue;
  List<String> options = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add Session Timings',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Add session timings when you are available to consult patients.",
                    style: TextStyle(color: Color(0xff404040), height: 1.5),
                  )),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Same timings for weekdays",
                    style: TextStyle(
                        color: Color(0xff676767),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  // Container(
                  //   child: FlutterSwitch(
                  //     width: 48.0,
                  //     height: 23.0,
                  //     valueFontSize: 12.0,
                  //     toggleSize: 15.0,
                  //     value: status,
                  //     borderRadius: 30.0,
                  //     // padding: 8.0,
                  //     showOnOff: false,
                  //     onToggle: (val) {
                  //       setState(() {
                  //         status = val;
                  //       });
                  //     },
                  //   ),
                  // ),
                ],
              ),
              // Container(
              //   child: Form(
              //     key: formKey,
              //     child: Column(
              //       children: [
              //         FormField<List<String>>(
              //           validator: (value) {
              //             if (value?.isEmpty ?? value == null) {
              //               return 'Please select some categories';
              //             }
              //
              //             return null;
              //           },
              //           builder: (state) {
              //             return Column(
              //               children: <Widget>[
              //                 Container(
              //                   alignment: Alignment.centerLeft,
              //                   child: ChipsChoice<String>.multiple(
              //                     value: state.value,
              //                     onChanged: (val) => state.didChange(val),
              //                     choiceItems:
              //                         C2Choice.listFrom<String, String>(
              //                       source: options,
              //                       value: (i, v) => v.toLowerCase(),
              //                       label: (i, v) => v,
              //                       tooltip: (i, v) => v,
              //                     ),
              //                     choiceStyle: const C2ChoiceStyle(
              //                       color: Color(0xff63BFEE),
              //                       borderOpacity: .3,
              //                     ),
              //                     choiceActiveStyle: const C2ChoiceStyle(
              //                       color: Color(0xff63BFEE),
              //                       brightness: Brightness.dark,
              //                     ),
              //                     wrapped: true,
              //                   ),
              //                 ),
              //               ],
              //             );
              //           },
              //         ),
              //         Divider(),
              //       ],
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
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
                          'Save',
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
      ),
    );
  }
}
