import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  String time;
  String course;
  String caption;
  MyTask(
      {super.key,
      required this.time,
      required this.course,
      required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFA6A6A6),
      ),
      padding: const EdgeInsets.only(left: 5),
      margin: const EdgeInsets.only(top: 20),
      width: 150,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '$time',
                style: const TextStyle(color: Color(0xFFDADADA)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: Icon(Icons.mobile_friendly, color: Colors.grey[300]),
              ),
            ],
          ),
          Text(
            '$course',
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              '$caption',
              style: const TextStyle(color: Color(0xFFDADADA)),
            ),
          )
        ],
      ),
    );
  }
}
