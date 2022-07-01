import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DoulaOnboardEarnings extends StatelessWidget {
  const DoulaOnboardEarnings({Key? key}) : super(key: key);
  // final List<ChartData> chartData = [
  //   ChartData(1, 35),
  //   ChartData(2, 23),
  //   ChartData(3, 34),
  //   ChartData(4, 25),
  //   ChartData(5, 40)
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250.0), // here the desired height,
          child: AppBar(
              flexibleSpace: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFD9375),
                        Color(0xFFF26966),
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      // textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Sep - Oct \n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '₹ 23,280\t',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Total\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetuer ipsum dolor sit amet .',
                          style: TextStyle(
                              color: Colors.white, fontSize: 14, height: 1.5),
                        ),
                      ]),
                    ),
                  ),
                ],

                // )
                // ),
              ),
              backgroundColor: const Color(0xFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/menuAction.svg",
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ],
          ),
        ));
  }
}
