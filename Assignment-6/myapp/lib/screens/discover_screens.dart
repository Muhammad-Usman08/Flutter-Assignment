import 'package:flutter/material.dart';
import 'package:myapp/components/container.dart';
import 'package:myapp/components/options.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Los Angles CA',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 15, right: 15),
                    child: Icon(Icons.assignment),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ],
              ), //Header end

              //Section 1
              const Text(
                'Discover Best \nSuitable Property',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF0F2F44)),
              ),

              //Section 2
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 30, right: 30),
                      child: Text(
                        'House',
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Color(0xFF0F2F44)),
                    ),
                    const MyOptions(option: 'Appartments'),
                  ],
                ),
              ),

              //Section 3
              const Text(
                'Best for you',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0F2F44)),
              ),

              //Section 4
              const MyContainer(
                image: 'assets/images/house-1.jpeg',
              ),

              //Section 5
              const Text(
                'Nearby your location ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              //Section 6
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFEAF1FF),
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 40),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/house-2.jpeg',
                        width: 100,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'RANCH HOME',
                            style: TextStyle(fontSize: 12),
                          ),
                          const Text(
                            '520 N Btoudry Ave Los Angeles',
                            style: TextStyle(fontSize: 10),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20, top: 10),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.bed,
                                      color: Color(0xFFF5C945),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: const Text(
                                          '4 Beds',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.bathroom,
                                        color: Color(0xFFF5C945),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: const Text(
                                            '4 Baths',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
