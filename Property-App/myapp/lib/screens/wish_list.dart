import 'package:flutter/material.dart';
import 'package:myapp/components/container.dart';
import 'package:myapp/screens/details.dart';
import './list.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              //Header
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wishlist',
                      style: TextStyle(
                          color: Color(0xFF0F2F44),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()));
                      },
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 15, right: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xFFEAF1FF)),
                          child: const Icon(Icons.arrow_back)),
                    )
                  ],
                ),
              ),

              //Properties
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: property.length,
                  itemBuilder: (context, index) {
                    return const MyContainer(
                      image: 'assets/images/house-1.jpeg',
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
