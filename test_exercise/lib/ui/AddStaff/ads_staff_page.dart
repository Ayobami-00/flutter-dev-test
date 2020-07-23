import 'package:flutter/material.dart';

class AddStaffPage extends StatefulWidget {
  @override
  _AddStaffPageState createState() => _AddStaffPageState();
}

class _AddStaffPageState extends State<AddStaffPage> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(5.0),
          child: AppBar(
            elevation: 5.0,
            backgroundColor: Colors.white,
            title: Row(
              children: <Widget>[
                Expanded(
                    child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
                Expanded(
                    child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )),
              ],
            ),
            actions: <Widget>[],
          )),
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            _buildStaffName('Name of Staff'),
            _buildStaffEmail('Email'),
            _buildStaffAddress('Address'),
            _buildStaffPhoneNo('Phone No.'),
            _buildStaffPassword('Password'),
            _buildStaffImageSelection('Staff Image', 'Select File'),
            _buildStaffLocation('Select Staff Location'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: CustomSwitch(
                activeText: "ON",
                inactiveText: "OFF",
                inactiveColor: Colors.grey,
                activeColor: Colors.pinkAccent,
                value: status,
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    status = value;
                  });
                },
              ),
            ),
          ]),
    );
  }

  Widget _buildStaffName(formLabel) {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(3)),
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
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
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
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
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
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
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
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
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
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
          child: Text(
            formLabel,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 30.0,
            width: 120.0,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0) //
                  ),
            ),
            child: Center(
              child: Text(
                iconLabel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  fontFamily: 'Lato',
                  color: Colors.red,
                ),
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
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13.0,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.43,
            fontFamily: 'Montserrat',
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
          ),
        )
      ],
    );
  }
}

// final String activeText = 'On';
//   final String inactiveText = 'Off';
//   final Color activeTextColor = Colors.white70;
//   final Color inactiveTextColor = Colors.white70;

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final String activeText;
  final String inactiveText;
  final Color activeTextColor;
  final Color inactiveTextColor;

  const CustomSwitch(
      {Key key,
      this.value,
      this.onChanged,
      this.activeColor,
      this.inactiveColor,
      this.activeText,
      this.inactiveText,
      this.activeTextColor,
      this.inactiveTextColor})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 70.0,
            height: 35.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? widget.inactiveColor
                    : widget.activeColor),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Text(
                            widget.activeText,
                            style: TextStyle(
                                color: widget.activeTextColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                        )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 5.0),
                          child: Text(
                            widget.inactiveText,
                            style: TextStyle(
                                color: widget.inactiveTextColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
