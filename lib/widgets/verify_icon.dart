import 'package:flutter/material.dart';

class VerifyIcon extends StatelessWidget {
  const VerifyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundColor: Color.fromRGBO(224, 224, 224, 0.6),
        radius: 45,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromRGBO(254, 91, 88, 0.2),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Color.fromRGBO(254, 91, 88, 1),
            child: Icon(
              Icons.verified_user,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
