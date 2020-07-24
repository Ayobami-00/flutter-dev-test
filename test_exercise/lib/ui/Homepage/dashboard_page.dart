import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:test_exercise/themes/TestExerciseTheme.dart';
import 'package:test_exercise/ui/Homepage/widgets/homepage_card_item.dart';

import 'repository/homepage_data_repository.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<CardItemModel> items = new List<CardItemModel>();

  @override
  void initState() {
    super.initState();
    items = getCardItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F3F8),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: _buildHeaderCard(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 3.0,
              ),
              delegate: SliverChildBuilderDelegate(
                //!NOTE: For the notification icon, I was not able to extract it from Xd so I used a default one.
                  (context, index) => CardItem(cardItems: items, index: index),
                  childCount: items.length),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
      child: Container(
        height: 250.0,
        child: Card(
          elevation: 5.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 3.0),
                child: Text("Today's Transaction",
                    style: testExerciseTheme().textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
                child: Text("15 June 2020",
                    style: testExerciseTheme().textTheme.headline3.copyWith(
                          fontSize: 10,
                        )),
              ),
              Divider(
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: new TextSpan(
                          text: "N",
                          style: testExerciseTheme()
                              .textTheme
                              .headline5
                              .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0),
                          children: <TextSpan>[
                            new TextSpan(
                                text: '0.00',
                                style: testExerciseTheme()
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0)),
                          ],
                        ),
                      ),
                      Text("Sales",
                          style:
                              testExerciseTheme().textTheme.headline5.copyWith(
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    LinearPercentIndicator(
                      width: 200.0,
                      lineHeight: 20.0,
                      percent: 0.7,
                      backgroundColor: Color(0xFFE0115F).withOpacity(0.25),
                      progressColor: Color(0xFFE0115F),
                      linearStrokeCap: LinearStrokeCap.butt,
                    ),
                    Column(
                      children: <Widget>[
                        RichText(
                          text: new TextSpan(
                            text: "N",
                            style: testExerciseTheme()
                                .textTheme
                                .headline5
                                .copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: '0.00',
                                  style: testExerciseTheme()
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0)),
                            ],
                          ),
                        ),
                        Text("Profit",
                            style: testExerciseTheme()
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    LinearPercentIndicator(
                      width: 170.0,
                      lineHeight: 20.0,
                      percent: 0.5,
                      backgroundColor: Color(0xFFE0115F).withOpacity(0.25),
                      progressColor: Color(0xFFE0115F),
                      linearStrokeCap: LinearStrokeCap.butt,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: new TextSpan(
                            text: "N",
                            style: testExerciseTheme()
                                .textTheme
                                .headline5
                                .copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: '0.00',
                                  style: testExerciseTheme()
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0)),
                            ],
                          ),
                        ),
                        Text("Expenses",
                            style: testExerciseTheme()
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                      ],
                    ),
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
