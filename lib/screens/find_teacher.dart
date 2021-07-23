import 'dart:math';

import 'package:find_teachersapp/screens/select_teacher.dart';
import 'package:find_teachersapp/screens/verify_phone.dart';
import 'package:find_teachersapp/widgets/regis_login_button.dart';
import 'package:flutter/material.dart';

class FindTeacher extends StatelessWidget {
  FindTeacher({Key? key}) : super(key: key);
  final double spaceBetweenCrcleAvatars = 18;
  final double circleAvatarRadius = 38;
  final teacherImageList = [
    'images/1b.jpg',
    'images/1d.jpg',
    'images/1w.jpg',
    'images/2b.jpg',
    'images/2w.jpg',
    'images/3b.jpg',
    'images/3w.jpg',
    'images/4b.jpg',
    'images/4w.jpg',
    'images/5w.jpg',
    'images/7b.jpg',
    'images/9b.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(circleAvatarRadius),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 40, right: 40, bottom: 20),
                  child: Text(
                    'Teachers from all over the world',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, est qui dolorem ipsum adipisci velit',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // THE 3 ROWS OF IMAGE IN THE HOME SCREEN
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 47),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                    SizedBox(width: spaceBetweenCrcleAvatars),
                    CircleAvatar(
                      radius: circleAvatarRadius,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(teacherImageList[
                          Random().nextInt(teacherImageList.length)]),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegisLoginButton(
                  text: 'Signup',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyPhone()),
                    );
                  },
                ),
                SizedBox(width: 15),
                RegisLoginButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectTeacher()),
                    );
                  },
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {},
            child: Text(
              'Tutor Signup / Login',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
