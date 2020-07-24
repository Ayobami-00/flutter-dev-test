import 'package:flutter/material.dart';

import '../../themes/TestExerciseTheme.dart';
import '../Homepage/homepage.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_switch_with_text_indicator.dart';

class AddStaffPage extends StatefulWidget {
  @override
  _AddStaffPageState createState() => _AddStaffPageState();
}

class _AddStaffPageState extends State<AddStaffPage> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            _buildStaffName('Name of Staff'),
            _buildStaffEmail('Email'),
            _buildStaffAddress('Address'),
            _buildStaffPhoneNo('Phone No.'),
            _buildStaffPassword('Password'),
            _buildStaffImageSelection('Staff Image', 'Select File'),
            _buildStaffLocation('Select Staff Location'),
            _buildTitle('Select Staff Acess Rights'),
            _buildHeaderTitle('Access to Sales Register'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Online Pos",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "All Sales Reports",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Customers'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "View Customers",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Add/Edit Customer",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Supplies'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "View Supplies",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Add/Edit Supplies",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Products and Services'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Access to Product List",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Add Products",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "View Cost Price",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Edit Product/Service",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Restock Product",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Delete Product/Service",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Staff'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Add/Edit Staff",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "View Staff",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Reporting'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Sales Report",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Inventory Report",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Expense Report",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderMultipleTitle(
                'Access to Profile', '(Allow Staff to Edit his/her Details)'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Update Profile Setting",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            _buildHeaderTitle('Access to Expense'),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "Add/Edit Expenses",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            CustomSwichtWidgetWithTextIndicator(
              textIndicatorLabel: "View Expenses",
              textIndicatorStyle: testExerciseTheme().textTheme.headline3,
              activeSwitchText: "On",
              inactiveSwitchText: "Off",
              inactiveSwitchColor: Color(0xFFCBCFDD),
              activeSwitchColor: Color(0xFFE0115F),
              switchValue: status,
              activeSwitchTextTheme: testExerciseTheme().textTheme.subtitle1,
              inactiveSwitchTextTheme: testExerciseTheme().textTheme.subtitle2,
              onChangedSwitch: (value) {
                print("VALUE : $value");
              },
            ),
            SizedBox(height: 35.0),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                width: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE0115F),
                ),
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    "Save",
                    style: testExerciseTheme()
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ]),
    );
  }

  Widget _buildAppBar() {
    return CustomAppBar(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30.0,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStaffName(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStaffEmail(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStaffAddress(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStaffPhoneNo(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStaffPassword(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStaffImageSelection(formLabel, iconLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child:
              Text(formLabel, style: testExerciseTheme().textTheme.headline3),
        ),
        SizedBox(
          height: 20.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 40.0,
            width: 120.0,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE0115F),
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0) //
                  ),
            ),
            child: Center(
              child: Text(
                iconLabel,
                style: testExerciseTheme().textTheme.bodyText1,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  Widget _buildStaffLocation(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            formLabel,
            style: testExerciseTheme().textTheme.headline3,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: testExerciseTheme().textSelectionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(3, 40, 40, 3),
      alignment: Alignment.bottomLeft,
      child: Text(title, style: testExerciseTheme().textTheme.headline3),
    );
  }

  Widget _buildHeaderTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(3, 40, 40, 3),
      alignment: Alignment.bottomLeft,
      child: Text(title, style: testExerciseTheme().textTheme.headline1),
    );
  }

  Widget _buildHeaderMultipleTitle(String title1, String title2) {
    return Container(
      padding: const EdgeInsets.fromLTRB(3, 40, 40, 3),
      alignment: Alignment.bottomLeft,
      child: RichText(
        text: new TextSpan(
          text: title1,
          style: testExerciseTheme().textTheme.headline1,
          children: <TextSpan>[
            new TextSpan(
                text: ' $title2',
                style: testExerciseTheme()
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 12.0)),
          ],
        ),
      ),
      // Text(title, style: testExerciseTheme().textTheme.headline1),
    );
  }
}
