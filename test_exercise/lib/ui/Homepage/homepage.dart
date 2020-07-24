import 'package:flutter/material.dart';
import 'package:test_exercise/themes/TestExerciseTheme.dart';
import 'package:test_exercise/ui/AddStaff/widgets/custom_app_bar.dart';

import 'dashboard_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: new Scaffold(
        appBar: _buildAppBar(),
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                new SliverAppBar(
                  backgroundColor: Colors.white,
                  pinned: false,
                  expandedHeight: 2.0,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0.0),
                    child: new TabBar(
                      labelColor: Color(0xFF050505),
                      labelStyle: testExerciseTheme().appBarTheme.textTheme.bodyText1,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Color(0xFFE0115F),
                      indicatorWeight: 3.0,
                      tabs: [
                        new Tab(text: 'DASHBOARD'),
                        new Tab(text: 'ACTIVITY'),
                      ],
                      controller: controller,
                    ),
                  ),
                ),
                new SliverFillRemaining(
                  child: TabBarView(
                    controller: controller,
                    children: <Widget>[
                      DashBoardPage(),
                      Text(" "),
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

  Widget _buildAppBar() {
    return CustomAppBar(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.more_vert,
            color: Color(0xFFE0115F),
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
