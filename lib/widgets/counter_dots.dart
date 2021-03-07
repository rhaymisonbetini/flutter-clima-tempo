import 'package:flutter/material.dart';

class CounterDots extends StatelessWidget {
  bool isActive;
  CounterDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 1500),
      margin: EdgeInsets.only(top: 140, left: 15),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: isActive ? 12 : 5,
            height: 5,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
