import 'package:flutter/material.dart';

class CustomSwichtWidgetWithTextIndicator extends StatefulWidget {
  final String textIndicatorLabel;
  final TextStyle textIndicatorStyle;
  final bool switchValue;
  final ValueChanged<bool> onChangedSwitch;
  final Color activeSwitchColor;
  final Color inactiveSwitchColor;
  final String activeSwitchText;
  final String inactiveSwitchText;
  final TextStyle activeSwitchTextTheme;
  final TextStyle inactiveSwitchTextTheme;

  const CustomSwichtWidgetWithTextIndicator(
      {Key key,
      this.textIndicatorLabel,
      this.textIndicatorStyle,
      this.switchValue,
      this.onChangedSwitch,
      this.activeSwitchColor,
      this.inactiveSwitchColor,
      this.activeSwitchText,
      this.inactiveSwitchText,
      this.activeSwitchTextTheme,
      this.inactiveSwitchTextTheme})
      : super(key: key);

  @override
  _CustomSwichtWidgetWithTextIndicatorState createState() => _CustomSwichtWidgetWithTextIndicatorState();
}

class _CustomSwichtWidgetWithTextIndicatorState extends State<CustomSwichtWidgetWithTextIndicator>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.switchValue ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.switchValue ? Alignment.centerLeft : Alignment.centerRight)
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
            widget.switchValue == false
                ? widget.onChangedSwitch(true)
                : widget.onChangedSwitch(false);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 5.0,
                    offset: Offset(
                      0.0,
                      15.0,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        widget.textIndicatorLabel,
                        style: widget.textIndicatorStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        width: 70.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: _circleAnimation.value == Alignment.centerLeft
                                ? widget.inactiveSwitchColor
                                : widget.activeSwitchColor),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _circleAnimation.value == Alignment.centerRight
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 4.0),
                                      child: Text(
                                        widget.activeSwitchText,
                                        style: widget.activeSwitchTextTheme,
                                      ),
                                    )
                                  : Container(),
                              Align(
                                alignment: _circleAnimation.value,
                                child: Container(
                                  width: 25.0,
                                  height: 25.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                ),
                              ),
                              _circleAnimation.value == Alignment.centerLeft
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 5.0),
                                      child: Text(
                                        widget.inactiveSwitchText,
                                        style: widget.inactiveSwitchTextTheme,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
