import 'package:flutter/material.dart';

class SelectYourSkillsets extends StatelessWidget {
  const SelectYourSkillsets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: new Icon(Icons.menu_outlined),
        //       color: Color(0xFF535353)),
        //   SizedBox(width: 10),
        // ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select your skillsets",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Cleaning",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff282828)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Good with pets",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff282828)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Laundary",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff282828)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: Container(
                          width: 90,
                          child: Text(
                            "Computer",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff282828),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Cooking",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff282828)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xffF47169), width: 2),
                        ),
                        // margin: const EdgeInsets.only(right: 16),
                        child: ClipOval(
                          child: Image.asset("assets/images/Cleaning.png"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Soft spoken",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff282828)),
                      )
                    ],
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
