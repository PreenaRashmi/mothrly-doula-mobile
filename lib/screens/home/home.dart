import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/menuAction.svg"),
              color: Color(0xFF535353)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: "Good Morning,\n",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Color(0xff555555)),
                ),
                TextSpan(
                  text: "Dr. Koul",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Color(0xff555555)),
                )
              ])),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Divider(
                  color: Color(0xffD2D2D2),
                  thickness: 0.5, //thickness of divier line
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 50,
                padding: new EdgeInsets.all(8),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 12.0, top: 0.0),
                    border: InputBorder.none,
                  ),
                ),
                decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(30.0)),
                    color: Colors.white),
                //width: 250,
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(30.0)),
                    child: Image.asset(
                      'assets/images/imageDoulaHome.png',
                      // height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    // alignment: Alignment.center,

                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Earn More At Your Convenience',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'You bring the skill we bring opportunities.',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                //width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFD9375),
                        Color(0xFFF26966),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.blue[50],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Check your Daily Earnings ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xffffffff))),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 0.3, color: Color(0xffffffff)),
                                    ),
                                  ),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetuer ipsum dolor sit amet dolor sit.",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffffffff))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffffffff)),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "₹ 23,280",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff)),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Sep - Oct",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffffffff)),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 18),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(18, 0, 18, 18),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'View All Earnings',
                                style: TextStyle(color: Color(0xffffffff)),
                              ),
                              style: OutlinedButton.styleFrom(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  side: BorderSide(
                                      color: Color(0xffffffff), width: 2),
                                  shape: StadiumBorder()),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Select Hospital",
                style: TextStyle(
                    color: Color(0xff393939),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Max Super Speciality Hospital",
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
              SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: const Color(0xFFACACAC)),
                      )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "25",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff4F4F4F)),
                                children: <InlineSpan>[
                                  WidgetSpan(
                                      alignment: PlaceholderAlignment.baseline,
                                      baseline: TextBaseline.alphabetic,
                                      child: SizedBox(width: 10)),
                                  TextSpan(
                                    text: "Total Consultations",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF464646)),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Today",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff686868),
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          children: [],
                        )),

                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track Patient’s Performance",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff393939)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectuer",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xff8B8B8B)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: const Color(0xFF7C7C7C)),
                      )),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/chatPerson.png",
                          height: 55,
                          width: 55,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Dr. Saket Gautam",
                                      style: TextStyle(
                                          color: const Color(0xFF464646),
                                          fontFamily: 'General Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    "Active",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                              SizedBox(height: 3),
                              Text("28 years, Mumbai, 5 Months Pregnant",
                                  style: TextStyle(
                                    color: const Color(0xFF949494),
                                    fontFamily: 'General Sans',
                                    fontSize: 12,
                                  )),
                            ]),
                      ]),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Blood Tests",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("CRC, CRP, B12",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sonography",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Done",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Diet Plan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff63BFEE))),
                              ],
                            )
                          ],
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Chat'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff63BFEE),
                                  shape: StadiumBorder(),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: const Color(0xFF7C7C7C)),
                      )),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/chatPerson.png",
                          height: 55,
                          width: 55,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Dr. Saket Gautam",
                                      style: TextStyle(
                                          color: const Color(0xFF464646),
                                          fontFamily: 'General Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    "Active",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                              SizedBox(height: 3),
                              Text("28 years, Mumbai, 5 Months Pregnant",
                                  style: TextStyle(
                                    color: const Color(0xFF949494),
                                    fontFamily: 'General Sans',
                                    fontSize: 12,
                                  )),
                            ]),
                      ]),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Blood Tests",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("CRC, CRP, B12",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sonography",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Pending",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFE6464))),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Diet Plan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff63BFEE))),
                              ],
                            )
                          ],
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Chat'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff63BFEE),
                                  shape: StadiumBorder(),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: const Color(0xFF7C7C7C)),
                      )),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/chatPerson.png",
                          height: 55,
                          width: 55,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Dr. Saket Gautam",
                                      style: TextStyle(
                                          color: const Color(0xFF464646),
                                          fontFamily: 'General Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 85,
                                  ),
                                  Text(
                                    "Active",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                              SizedBox(height: 3),
                              Text("28 years, Mumbai, 5 Months Pregnant",
                                  style: TextStyle(
                                    color: const Color(0xFF949494),
                                    fontFamily: 'General Sans',
                                    fontSize: 12,
                                  )),
                            ]),
                      ]),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Blood Tests",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("CRC, CRP, B12",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                Text("Pending",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFE6464))),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sonography",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Pending",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFE6464))),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Diet Plan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff63BFEE))),
                              ],
                            )
                          ],
                        )),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Chat'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff63BFEE),
                                  shape: StadiumBorder(),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Color(0xffD2D2D2), //color of divider
                  // height: 5, //height spacing of divider
                  thickness: 0.5, //thickness of divier line
                  //spacing at the end of divider
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Answer questions asked by your patient",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: const Color(0xFF7C7C7C)),
                      )),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Srishti Malhotra",
                                    style: TextStyle(
                                        color: const Color(0xFF464646),
                                        fontFamily: 'General Sans',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: 85,
                                ),
                                Text(
                                  "Skip",
                                  style: TextStyle(color: Colors.green),
                                )
                              ],
                            ),
                            SizedBox(height: 3),
                            Text("31 years, Mumbai",
                                style: TextStyle(
                                  color: const Color(0xFF949494),
                                  fontFamily: 'General Sans',
                                  fontSize: 12,
                                )),
                          ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        "Hi, I am Srishti...just gave birth to a beautiful baby girl. Although, my hair loss is endless. Is it normal?",
                        style:
                            TextStyle(color: Color(0xffA5A5A5), fontSize: 16),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Answer',
                                style: TextStyle(
                                    color: Color(0xff63BFEE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              style: ElevatedButton.styleFrom(
                                  // primary: Color(0xff63BFEE),
                                  side: BorderSide(color: Color(0xff63BFEE)),
                                  shape: StadiumBorder(),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
