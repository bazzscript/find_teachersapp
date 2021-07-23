import 'package:flutter/material.dart';

class RegisLoginButton extends StatelessWidget {
  final text;
  final onPressed;
  RegisLoginButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2.0),
        shape: StadiumBorder(),
      ),
    );
  }
}
