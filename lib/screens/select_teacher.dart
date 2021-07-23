import 'dart:math';
import 'package:find_teachersapp/widgets/filters_button.dart';
import 'package:find_teachersapp/widgets/teacher_detail.dart';
import 'package:flutter/material.dart';

class SelectTeacher extends StatelessWidget {
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

  SelectTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Select Instructor',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Icon(Icons.filter_alt_rounded),
                        SizedBox(width: 10),
                        VerticalDivider(),
                        SizedBox(width: 10),
                        FilterButton(label: 'Sort'),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Mathematics'),
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.black,
                            elevation: 0,
                            padding: EdgeInsets.only(left: 30, right: 30),
                          ),
                        ),
                        SizedBox(width: 10),
                        FilterButton(label: '\$10 - \$20'),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Mathematics'),
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.black,
                            elevation: 0,
                            padding: EdgeInsets.only(left: 30, right: 30),
                          ),
                        ),
                        SizedBox(width: 10),
                        FilterButton(label: '\$10 - \$20')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TeacherDetail(
                teachersName: 'Chinaza Akachi',
                teachersSkill: 'Mathematics Expert',
                teachersLocation: 'Vancouver, BC',
                teachersPricePerHour: '43',
                teachersImage: teacherImageList[
                    Random().nextInt(teacherImageList.length)]),
            TeacherDetail(
              teachersName: 'Amelia Cabal',
              teachersSkill: 'Mathematics Expert',
              teachersLocation: 'Vancouver, BC',
              teachersPricePerHour: '56',
              teachersImage:
                  teacherImageList[Random().nextInt(teacherImageList.length)],
            ),
            TeacherDetail(
              teachersName: 'Jontray Arnold',
              teachersSkill: 'Mathematics Expert',
              teachersLocation: 'Vancouver, BC',
              teachersPricePerHour: '63',
              teachersImage:
                  teacherImageList[Random().nextInt(teacherImageList.length)],
            ),
            TeacherDetail(
                teachersName: 'Chinaza Akachi',
                teachersSkill: 'Mathematics Expert',
                teachersLocation: 'Vancouver, BC',
                teachersPricePerHour: '53',
                teachersImage: teacherImageList[
                    Random().nextInt(teacherImageList.length)]),
            TeacherDetail(
              teachersName: 'Amelia Cabal',
              teachersSkill: 'Mathematics Expert',
              teachersLocation: 'Vancouver, BC',
              teachersPricePerHour: '84',
              teachersImage:
                  teacherImageList[Random().nextInt(teacherImageList.length)],
            ),
            TeacherDetail(
              teachersName: 'Jontray Arnold',
              teachersSkill: 'Mathematics Expert',
              teachersLocation: 'Vancouver, BC',
              teachersPricePerHour: '93',
              teachersImage:
                  teacherImageList[Random().nextInt(teacherImageList.length)],
            ),
          ],
        ),
      ),
    );
  }
}
