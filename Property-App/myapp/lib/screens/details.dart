import 'package:flutter/material.dart';
import 'package:myapp/components/gallery.dart';
import 'package:myapp/screens/discover_screens.dart';
import 'package:myapp/screens/wish_list.dart';
import './list.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  //Add Items
  addItems() {
    property.add('1');
    print(property);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Details',
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
                                builder: (context) => const DiscoverScreen()));
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
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/house-1.jpeg',
                      width: 330,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: const Text(
                          'CRAFTSMAN HOUSE',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                      ),
                      const Text('520 N Beaudry Ave, Los Angeles'),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.bed,
                                    color: Color(0xFFF5C945),
                                  ),
                                  Text('4 beds')
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.bathroom,
                                    color: Color(0xFFF5C945),
                                  ),
                                  Text('4 Bath')
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.garage,
                                  color: Color(0xFFF5C945),
                                ),
                                Text('1 Garage')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WishList()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Icon(Icons.assignment),
                    ),
                  ),
                ],
              ),

              //Section 2
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 10),
                child: ListTile(
                  title: const Text(
                    'Rebecca',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: const Text('Owner Craftsman House'),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/6772/d868/669637285fce8ae786c1c00f73204cf4?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SEaiXZZlHM3XHNrtVSTYM-DEiOXXAIqPL0GtjclZmHIzKrssOjp8V6FXLmEEz1ikEC9BTno0lbRlK~vnWIhGpnaCtAH1OVMkyXLUOJ57UvqJ8VauqbOMEVJMv19RD6B6CQL~i93Cnu8N5wqUESQQw4efz30iKHWetZwIiHqCoy5iDchCVh-EswPhLa1gw8Jgt~1gcWsLVCxmYEbo3fhkmvVbfpwtowNtWb2waZ3JKkqh9sL3aRQSOAhgTCjxiPT2PuaDYXJnTV36rZ7E4kWLJKSZKSWEngkW826dc44DV5LQ91iMgilFZ8tGGwWWoGbVWzYJS~EDjzQB23j5XvKMXA__',
                    ),
                  ),
                  trailing: Container(
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF103144)),
                    child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: const Text(
                          'Call',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
                  style: TextStyle(fontSize: 13),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: const Text(
                  'Gallery',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),

              //Galleries
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyGallery(image: 'assets/images/bed-1.jpeg'),
                  MyGallery(image: 'assets/images/sofa-2.jpeg'),
                  MyGallery(image: 'assets/images/sofa-1.jpeg'),
                  MyGallery(image: 'assets/images/sofa-2.jpeg'),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: const Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rs 5,540,000',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF103144),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      addItems();
                    },
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF103144)),
                      child: Container(
                          margin: const EdgeInsets.only(left: 20, top: 4),
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
