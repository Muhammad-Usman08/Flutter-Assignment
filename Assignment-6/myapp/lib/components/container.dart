import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final dynamic image;
  const MyContainer({super.key , required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20 , bottom: 30),
      decoration: BoxDecoration(
          color: const Color(0xFF0F2F44),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('$image'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'CRAFTSMAN HOUSE',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              '520 N Btoudry Ave Los Angeles',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.bed,
                      color: Colors.yellow,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          '4 Beds',
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.bathroom,
                      color: Colors.yellow,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          '4 Baths',
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.car_crash,
                      color: Colors.yellow,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          '1 Garage',
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
