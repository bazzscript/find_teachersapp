import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final backgroundColor;
  final textColor;
  final label;

  final onPressed;
  FilterButton(
      {Key? key,
      required this.label,
      this.backgroundColor = Colors.transparent,
      this.onPressed,
      this.textColor = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade500),
      ),
      style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 30, right: 30)),
    );
  }
}
