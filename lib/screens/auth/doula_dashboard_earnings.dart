import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class ChartData {
  final int x;
  final double y;
  ChartData(this.x, this.y);
}

class BarChartData {
  BarChartData(this.x, this.y, this.color);
  final String x;
  final double? y;
  final Color? color;
}

class DoulaOnboardEarnings extends StatelessWidget {
  DoulaOnboardEarnings({Key? key}) : super(key: key);
  final List<BarChartData> barChartData = [
    BarChartData('Daily', 25, Color.fromRGBO(244, 110, 103, 0.29)),
    BarChartData('Monthly', 35, Color.fromRGBO(244, 110, 103, 0.29)),
    BarChartData('Quarterly', 45, Color.fromRGBO(244, 110, 103, 0.29)),
    BarChartData('Yearly', 55, Color.fromRGBO(244, 110, 103, 0.29))
  ];
  final List<ChartData> chartEarningData = [
    ChartData(2010, 18),
    ChartData(2011, 29),
    ChartData(2012, 15),
    ChartData(2013, 35),
    ChartData(2014, 20)
  ];
  final List<ChartData> chartEarningData1 = [
    ChartData(2010, 6),
    ChartData(2011, 25),
    ChartData(2012, 10),
    ChartData(2013, 27),
    ChartData(2014, 40)
  ];
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          // textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: '25 Deals closed\n',
                              style: TextStyle(
                                  color: Color(0xff676767),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: 'This Month',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontSize: 14,
                                  height: 1.5),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SfCartesianChart(series: <ChartSeries>[
                          SplineSeries<ChartData, int>(
                              dataSource: chartEarningData,
                              // Type of spline
                              splineType: SplineType.cardinal,
                              cardinalSplineTension: 0.9,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y),
                          SplineSeries<ChartData, int>(
                              dataSource: chartEarningData1,
                              // Type of spline
                              splineType: SplineType.cardinal,
                              cardinalSplineTension: 0.9,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y)
                        ]),
                        Divider(
                          color: Color(0xffD2D2D2),
                          thickness: 0.5, //thickness of divier line
                        ),
                        RichText(
                          // textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Booking Requests',
                              style: TextStyle(
                                  color: Color(0xff787878),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            WidgetSpan(
                                // alignment: PlaceholderAlignment.baseline,
                                // baseline: TextBaseline.alphabetic,
                                child: SizedBox(width: 30)),
                            TextSpan(
                              text: 'Service Delivered',
                              style: TextStyle(
                                  color: Color(0xffF46E67),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5),
                            ),
                          ]),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Term-wise Earnings Overview",
                          style: TextStyle(
                              color: Color(0xff676767),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            series: <CartesianSeries>[
                              ColumnSeries<BarChartData, String>(
                                  dataSource: barChartData,
                                  xValueMapper: (BarChartData data, _) =>
                                      data.x,
                                  yValueMapper: (BarChartData data, _) =>
                                      data.y,
                                  // Map color for each data points from the data source
                                  pointColorMapper: (BarChartData data, _) =>
                                      data.color)
                            ])
                      ],
                    ))
              ],
            ),
            // ),
          ),
        ));
  }
}
