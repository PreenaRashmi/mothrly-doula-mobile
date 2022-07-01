import 'package:flutter/material.dart';

class Skill {
  final String? image, title;

  Skill({
    this.image,
    this.title,
  });
}

List<Skill> skills = [
  Skill(
    title: "Cleaning",
    image: "assets/images/Cleaning.png",
  ),
  Skill(
    title: "Computer",
    image: "assets/images/computer.png",
  ),
  Skill(
    title: "Laundary",
    image: "assets/images/Laundary.png",
  ),
  Skill(
    title: "Cooking",
    image: "assets/images/cooking.png",
  ),
  Skill(
    title: "Soft spoken",
    image: "assets/images/softspoken.png",
  ),
  Skill(
    title: "Good with pets",
    image: "assets/images/Goodwithpets.png",
  ),
];

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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select your skillsets",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 40,
                  ),
                  Flexible(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: skills.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        // mainAxisExtent: 180,
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        // print(skills[index].title);
                        return Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Expanded(
                            //   child:

                            Container(
                              // width: 110,
                              // height: 110,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffF47169), width: 2),
                              ),
                              // margin: const EdgeInsets.only(right: 16),
                              child: ClipOval(
                                child: Image.asset("${skills[index].image}"),
                              ),
                              // child: ClipOval(
                              //   child: Image.asset("assets/images/Cleaning.png"),
                              // ),
                            ),
                            // ),
                            SizedBox(
                              height: 8,
                            ),
                            // Expanded(
                            //   child:
                            Expanded(
                              child: Container(
                                child: Text(
                                  "${skills[index].title}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff282828)),
                                ),
                              ),
                            ),
                            // )
                          ],
                        );
                        //   ClipOval(
                        //   child: Image.asset("${skills[index].image}"),
                        // );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.add,
                        size: 15,
                        color: Color(0xffF26966),
                      ),
                      Text(
                        'Add Skills',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffF26966),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 8),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 22),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            side:
                                BorderSide(color: Color(0xffF36D67), width: 2),
                            shape: StadiumBorder()),
                      ),
                    ),
                  ),
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
              ),
            ],
          ),
        ));
  }
}
