import 'package:flutter/material.dart';

class TeacherDetail extends StatelessWidget {
  final teachersName;
  final teachersSkill;
  final teachersLocation;
  final teachersImage;
  final teachersPricePerHour;

  TeacherDetail({
    Key? key,
    required this.teachersName,
    this.teachersSkill,
    this.teachersLocation,
    required this.teachersImage,
    this.teachersPricePerHour = '0',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        // left: 30,
        // right: 30,
        bottom: 50,
      ),
      child: Row(
        children: [
          // the first is price overlaying techers picture
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(teachersImage),
                      alignment: Alignment.center,
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 120,
                width: 115,
              ),
              Positioned(
                top: 95,
                left: 20,
                right: 20,
                child: Container(
                    alignment: Alignment.center,
                    // height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 70,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: RichText(
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '\$$teachersPricePerHour',
                            ),
                            TextSpan(
                                text: ' hour', style: TextStyle(fontSize: 13))
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(width: 24),
          // TeachersDetail
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                teachersName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                teachersSkill,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(teachersLocation),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 12.0,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
