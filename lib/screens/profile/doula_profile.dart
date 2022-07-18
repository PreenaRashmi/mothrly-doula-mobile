import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:gyn/screens/profile/edit_profile.dart';
import 'dart:math' as math;

import '../../components/cbutton.dart';
import 'edit_profile.dart';

class DoulaProfile extends StatefulWidget {
  @override
  _DoulaProfileState createState() => _DoulaProfileState();
}

class _DoulaProfileState extends State<DoulaProfile> {
  static double avatarMaximumRadius = 50.0;
  static double avatarMinimumRadius = 20.0;
  double avatarRadius = avatarMaximumRadius;
  double expandedHeader = 200.0;
  double translate = -avatarMaximumRadius;
  bool isExpanded = true;
  double offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: NotificationListener<ScrollUpdateNotification>(
          onNotification: (scrollNotification) {
            final pixels = scrollNotification.metrics.pixels;

            // check if scroll is vertical ( left to right OR right to left)
            final scrollTabs = (scrollNotification.metrics.axisDirection ==
                    AxisDirection.right ||
                scrollNotification.metrics.axisDirection == AxisDirection.left);

            if (!scrollTabs) {
              // and here prevents animation of avatar when you scroll tabs
              if (expandedHeader - pixels <= kToolbarHeight) {
                if (isExpanded) {
                  translate = 0.0;
                  setState(() {
                    isExpanded = false;
                  });
                }
              } else {
                translate = -avatarMaximumRadius + pixels;
                if (translate > 0) {
                  translate = 0.0;
                }
                if (!isExpanded) {
                  setState(() {
                    isExpanded = true;
                  });
                }
              }

              offset = pixels * 0.4;

              final newSize = (avatarMaximumRadius - offset);

              setState(() {
                if (newSize < avatarMinimumRadius) {
                  avatarRadius = avatarMinimumRadius;
                } else if (newSize > avatarMaximumRadius) {
                  avatarRadius = avatarMaximumRadius;
                } else {
                  avatarRadius = newSize;
                }
              });
            }
            return false;
          },
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                  expandedHeight: expandedHeader,
                  backgroundColor: Color(0xFFFAFAFA),
                  leading: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/back_arrow.svg",
                      color: isExpanded ? Colors.white : Colors.black,
                    ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/editProfile.svg",
                          color: isExpanded ? Colors.white : Colors.black,
                        ),
                        color: Color(0xFFFFFFFF)),
                    SizedBox(width: 10),
                  ],
                  // leading: BackButton(
                  //   color: isExpanded ? Colors.grey : Colors.white,
                  // ),
                  pinned: true,
                  elevation: 0,
                  forceElevated: true,
                  flexibleSpace: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: isExpanded
                                ? Colors.transparent
                                : Color(0xFFFAFAFA),
                            image: isExpanded
                                ? DecorationImage(
                                    fit: BoxFit.fill,
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage(
                                        "assets/images/doula-pregnant-woman.png"))
                                : null),
                        child: Container(
                          alignment: Alignment.center,
                          child: isExpanded
                              ? Transform(
                                  transform: Matrix4.identity()
                                    ..translate(0.0, 120),
                                  child: MyAvatar(isExpanded: isExpanded),
                                )
                              : MyAvatar(isExpanded: isExpanded),
                        ),
                      ),
                    ],
                  )),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          isExpanded
                              ? SizedBox(
                                  height: avatarMinimumRadius * 1,
                                )
                              : MyAvatar(isExpanded: isExpanded),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      ProfileHeader(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Skillset",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Skillset(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Certifications",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Certifications(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                              color: Color(
                                  0xffFCFCFC), // Your desired background color
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.1)),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage("assets/images/pic1.png"),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "684 Online consultations completed",
                                    style: TextStyle(
                                        color: Color(0xff6F6F6F),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage("assets/images/pic1.png"),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "14 Years of experience",
                                    style: TextStyle(
                                        color: Color(0xff6F6F6F),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage("assets/images/pic1.png"),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Certified Gynecologist ",
                                    style: TextStyle(
                                        color: Color(0xff6F6F6F),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return PatientReviews();
                  },
                  childCount: 12,
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
      // padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(right: 15),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
              ),
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.all(Radius.circular(25.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/empathy.png"))),
                  child: Text(
                    "Empathy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            );
          }),
    );
  }
}

class Certifications extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(right: 15),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
              ),
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      // borderRadius: new BorderRadius.all(Radius.circular(25.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/certificate.png"))),
                  child: Text(
                    "Empathy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            );
          }),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "Lakshita Das",
          style: TextStyle(
              color: Color(0xff4A4A4A),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        SizedBox(
          height: 2,
        ),
        Text("28 Years, Mumbai",
            style: TextStyle(
                color: Color(0xff6B6B6B),
                fontSize: 14,
                fontWeight: FontWeight.w400)),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: const Color(0xFF7C7C7C)),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/userIcon.svg",
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('5 Years',
                      style: TextStyle(
                          color: Color(0xff4A4A4A),
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Experience',
                      style: TextStyle(
                          color: Color(0xff929292),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/feeIcon.svg",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('₹8,200',
                      style: TextStyle(
                          color: Color(0xff4A4A4A),
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(
                    width: 5,
                  ),
                  Text('per month',
                      style: TextStyle(
                          color: Color(0xff929292),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/locationIcon.svg",
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                        '21, 21 Satyam Indl Estate, Govandi Stn Rd, Telecom Deonar, Mumbai.',
                        style: TextStyle(
                            color: Color(0xff929292),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        // InkWell(
        //   // splashColor: Colors.orange,
        //   onTap: () {
        //     // Navigator.push(
        //     //   context,
        //     //   MaterialPageRoute(builder: (context) => EditProfile()),
        //     // );
        //   },
        //
        //   child: Container(
        //     decoration: BoxDecoration(
        //         borderRadius: const BorderRadius.all(Radius.circular(42)),
        //         // boxShadow: [
        //         //   BoxShadow(
        //         //     color: Color(0xffA6EAFD),
        //         //   ),
        //         // ],
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [
        //             Color(0xffFB8E73),
        //             Color(0xffF36D67),
        //           ],
        //         )),
        //     width: double.infinity,
        //     padding: const EdgeInsets.symmetric(vertical: 18),
        //     child: const Text(
        //       'Edit Profile',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           fontSize: 16,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.white),
        //     ),
        //   ),
        // ),
        CButton(
          onTapButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
          label: "Edit Button",
          vertical: 16,
          color: Colors.white,
        ),
      ],
    );
  }
}

class PatientReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xffFCFCFC), // Your desired background color
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1)),
          ]),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/reviewHead.png"),
            ),
            SizedBox(
              width: 10,
            ),
            RichText(
              text: TextSpan(
                  text: "Srishti Malhotra\n",
                  style: TextStyle(
                      color: Color(0xff464646),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  children: [
                    TextSpan(
                        text: "Mumbai, 12th Oct 2021",
                        style: TextStyle(
                            color: Color(0xffA5A5A5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ]),
            ),
          ],
        ),
        subtitle: Text(
          "\nShe’s one of the best doulas in my area. Really humble, soft spoken and good in nature.",
          style:
              TextStyle(color: Color(0xff464646), fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class MyAvatar extends StatefulWidget {
  final bool isExpanded;
  const MyAvatar({Key? key, this.isExpanded = true}) : super(key: key);

  @override
  State<MyAvatar> createState() => _MyAvatarState();
}

class _MyAvatarState extends State<MyAvatar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              width: 160,
              height: 160,
              child: Container(
                // height: 200,
                // width: 200,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  image: DecorationImage(
                    scale: 0.6,
                    // fit: BoxFit.fill,
                    image: AssetImage('assets/images/userProfile.png'),
                  ),
                ),
              ),
            ),
            widget.isExpanded
                ? Positioned(
                    bottom: -8,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(12, 5, 10, 5),
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xff4CC98A),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('4.5',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 18,
                              )
                            ])),
                  )
                : SizedBox(),
          ],
        ));
  }
}
