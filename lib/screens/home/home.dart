import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  bool _customTileExpanded = false;
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
                  text: "Shri",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    // textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Check Your\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Daily Bookings\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Lorem ipsum dolor sit amet, consectuer',
                        style: TextStyle(
                            color: Color(0xff8B8B8B),
                            fontSize: 14,
                            height: 1.5),
                      ),
                    ]),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Color(0xffF47069)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Skillset(),
              SizedBox(
                height: 30,
              ),
              Text(
                "FAQ Section",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              ListTileTheme(
                tileColor: Color(0xffFAF0EE),
                child: ExpansionTile(
                  title: const Text('How much time will i have to invest?'),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTileTheme(
                        tileColor: Colors.white,
                        child: ListTile(title: Text('This is tile number 2'))),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                ),
              ),
              ListTileTheme(
                tileColor: Color(0xffFAF0EE),
                child: ExpansionTile(
                  title: const Text('How much does it cost?'),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTileTheme(
                        tileColor: Colors.white,
                        child: ListTile(title: Text('This is tile number 2'))),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                ),
              ),
              ListTileTheme(
                tileColor: Color(0xffFAF0EE),
                child: ExpansionTile(
                  title: const Text('How much money can I make?'),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTileTheme(
                        tileColor: Colors.white,
                        child: ListTile(title: Text('This is tile number 2'))),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                ),
              ),
              ListTileTheme(
                tileColor: Color(0xffFAF0EE),
                child: ExpansionTile(
                  title: const Text('How do I price my services?'),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTileTheme(
                        tileColor: Colors.white,
                        child: ListTile(title: Text('This is tile number 2'))),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                ),
              ),
              ListTileTheme(
                tileColor: Color(0xffFAF0EE),
                child: ExpansionTile(
                  title: const Text(
                    'How will I get paid?',
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTileTheme(
                        tileColor: Colors.white,
                        child: ListTile(title: Text('This is tile number 2'))),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Skillset extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int i) => Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(25.0)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Color(0xffFAF0EE),
                        // boxShadow: [
                        //   BoxShadow(2

                        //     offset: Offset(0, 2),
                        //     // blurRadius: 5,
                        //     color: Color.fromRGBO(0, 0, 0, 0.1),
                        //   )
                        // ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "5m ago",
                            style: TextStyle(color: Color(0xffFE648B)),
                          ),
                        ),
                        ClipOval(
                          child: Image.asset(
                            "assets/images/clientImage.png",
                            width: 120,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Seema Sharma ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff464646))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "28 years, Mumbai",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff8B8B8B)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "21, 21 Satyam Indl Estate, Govandi Stn Rd, Telecom Deonar, Mumbai.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff8B8B8B)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Color(0xffD2D2D2),
                          thickness: 0.5, //thickness of divier line
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              // textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '₹6,200\n',
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Monthly Salary',
                                  style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontSize: 12,
                                      height: 1.5),
                                ),
                              ]),
                            ),
                            RichText(
                              // textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '8 months\n',
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Monthly Salary',
                                  style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontSize: 12,
                                      height: 1.5),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(42)),
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
                                  'View Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
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
                )
              ],
            ),
          ),
        ));
  }
}
