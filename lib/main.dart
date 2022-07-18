import 'package:doula/screens/home/home.dart';
import 'package:doula/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:doula/splash.dart';
import 'dart:ui' as ui;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xffF46F68),
          primarySwatch: MaterialColor(0xffF46F68, {
            50: Color(0xffF46F68),
            100: Color(0xffF46F68),
            200: Color(0xffF46F68),
            300: Color(0xffF46F68),
            400: Color(0xffF46F68),
            500: Color(0xffF46F68),
            600: Color(0xffF46F68),
            700: Color(0xffF46F68),
            800: Color(0xffF46F68),
            900: Color(0xffF46F68),
          }),
          dividerColor: Colors.transparent,
          fontFamily: 'General Sans'),
      home: const splashscreen(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _selectedTabIndex = 0;

  List _pages = [
    Home(),
    // ContactPatients(),
    // BookingRequests(),
    // GyneProfile(),
    // Chat(),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
      print("index..." + index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 20,
              color: Color.fromRGBO(0, 0, 0, 0.12),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            onTap: _changeIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Colors.cyan,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/homeIcon.svg",
                ),
                activeIcon: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        Offset(4.0, 24.0),
                        Offset(24.0, 4.0),
                        [Color(0xff63BFEE), Color(0xffA6EAFD)]);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/homeIcon.svg",
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/calenderIcon.svg",
                ),
                activeIcon: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        Offset(4.0, 24.0),
                        Offset(24.0, 4.0),
                        [Color(0xff63BFEE), Color(0xffA6EAFD)]);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/calenderIcon.svg",
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/walletIcon.svg",
                ),
                activeIcon: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        Offset(4.0, 24.0),
                        Offset(24.0, 4.0),
                        [Color(0xff63BFEE), Color(0xffA6EAFD)]);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/walletIcon.svg",
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/profileIcon.svg",
                ),
                activeIcon: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        Offset(4.0, 24.0),
                        Offset(24.0, 4.0),
                        [Color(0xff63BFEE), Color(0xffA6EAFD)]);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/profileIcon.svg",
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/chatIcon.svg",
                ),
                activeIcon: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        Offset(4.0, 24.0),
                        Offset(24.0, 4.0),
                        [Color(0xff63BFEE), Color(0xffA6EAFD)]);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/chatIcon.svg",
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
