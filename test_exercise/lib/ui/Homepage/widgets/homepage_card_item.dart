import 'package:flutter/material.dart';
import 'package:test_exercise/themes/TestExerciseTheme.dart';
import 'package:test_exercise/ui/Homepage/repository/homepage_data_repository.dart';

class CardItem extends StatefulWidget {
  final List<CardItemModel> cardItems;
  final int index;

  const CardItem({Key key, this.cardItems, this.index}) : super(key: key);
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(widget.cardItems[widget.index].getImageAssetPath()),
                SizedBox(height: 5.0),
                Text(
                  widget.cardItems[widget.index].getTitle(),
                  style: testExerciseTheme().textTheme.headline3.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                )
              ],
            ),
          ),
          Visibility(
            visible: widget.cardItems[widget.index].getNumber() != null,
            child: Positioned(
              top: 15.0,
              right: 35.0,
              child: Text(
                widget.cardItems[widget.index].getNumber() == null
                    ? " "
                    : widget.cardItems[widget.index].getNumber().toString(),
                style: testExerciseTheme().textTheme.headline5.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xFF6619EA)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
