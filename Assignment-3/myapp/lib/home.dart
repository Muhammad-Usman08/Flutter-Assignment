import 'package:flutter/material.dart';
import 'components/categories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Stylish',
            style: TextStyle(color: Colors.blue[500], fontSize: 30),
          ),
        ),
        leading: CircleAvatar(
          child: Text(
            '=',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          radius: 10,
          backgroundColor: Colors.grey[200],
        ),
        actions: [
          ClipOval(
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/e2db/1865/e7299c33d1d7de36aa46e37cda72d981?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PJ5KrVX5jNs-8VJh6l8D88kzk5B48kcuOnToptN9tzKmNO9e7g~AbGBrXH8Ic638my84ifaDDS~mP71MftfnzftNGLMpjN-tUl2yypVGzy17yrbr0ZzOvIjIcASa0o3r1ZJZE00DmRFJwZlMKZBWv3x3JJWvyBwuXoBxMBUWgmMZIr2r0D51pwb4MuES6TmPrGeuV3qEeY5mpyNulxrs0HR23bCujb6TduxvOn9wT2x7PYFuIF8HovqXspavLUypCq8bGXYCKzdZl7dfGdNnbaXfmeMFbqqnEElTxIMWkAP-SBJ2qW~vWUguKG9c~~prkvbjYMIoc4KE3X6bFMaQtA__',
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 14),
                      child: Categories(
                        image:
                            'https://s3-alpha-sig.figma.com/img/77dc/3192/88a3a1a0acdb5e2b8c199e28d46c3a05?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UyxfId8h3TM6v~deBsi8Ie9Mn78t81m~tthTXz9CLFhNMbduHbULBmJqDIFJ1Q~h6UwsvExrUg~QQN1gVkWPjxOo~vAQOQSjZ41HSAoEdSzt-IGG2g4KDnJzkKU7JOGrwMip556ojywQ-WK6zNuLG42dk0O0raRAdQOiyTe~EIAZhecXY2adgf1y1ATxUC20OLkl-rAEwUW08siztuL9i7aWoLjsDFI5Za2TAM91Q1ESZLMv6L2UPTKt4KcHf05cYOyHNpB9tTD76Yy~5NE2Ia8ZszGJ0FudMgZh843ARnzI9b6L~SYYXdsL~l4NpLHKaEGivnZ69yUbMfav0MjtPQ__',
                        name: 'Beauty',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 50),
                      child: Categories(
                        image:
                            'https://s3-alpha-sig.figma.com/img/5982/d09b/6405982a6843c556ed0bf5d13e1a241a?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Asal02rohLfSvpfB6GKJBXXnN~3CV1~03JPa87DMmy85YHysAPlsCuSDyL35nwGPG3VAhQ82S-gdqP7Yy~6C9Ax8NFqrAy7pfFqMet32o0jrN5hLSDK5MjByAEnwha5mdYVVJYadVN5YMUNfhcaPKMGwej5Z~Envx7NQvj41LibSY1HtyONMHh532Cjg-D9vlYUKrzVSFS2VpE~Ly0J5mdUYBljwa5TCucXjY5Ed7aulegr899LcmKwdombjA21agYIC5irCmQtbwlvfTHktgTDI9qVK11OgqM7N8Ws9ydrON16BuwaI3tvjIs2dQ4UlrX9qrMG6U8ep9dK977mzCQ__',
                        name: 'Fashion',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 50),
                      child: Categories(
                        image:
                            'https://s3-alpha-sig.figma.com/img/0e55/e02d/9870442c5074d0c7dd7ec4f7cbd54d46?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hsF5CROcnPg2gDu~kTspI7c9pXkdZsXGtpK25yiywzN3P7MIyLC7VzwVnd2bFumSGvxjb7K2oI~8B79VSf3eEquiUtgyyW-5zmTezkLwdJcVpxKeLSgy5xUSsTCYFjStda3ZN7FhUaMedCDaryHNZ3YboIw9xduKjrVnKMx2WSRIiSHQ4v231x-1n9E4Hrue~XNZgSvDY7YrGpiXAYEsaNtvq4SCHLoUmPiCCXBoSsp5ttPatZHrTYX4ghe5CivParIJ0rS9VpuzFarERe9dAf00-8wVfeIc5Jg~n34pW~g206OVZN~NzyAxtWRWJhQaq11bwtYW7Ay0Kvj8OiXjKQ__',
                        name: 'Kids',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 50),
                      child: Categories(
                        image:
                            'https://s3-alpha-sig.figma.com/img/cf57/510a/44b7c5962eb40909fb7ea06f45b2ccb3?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PO7NhrAeTN60JGvoEWmXay-aANv7h3XV3Bf7OuNuhU11nwkOmv3CZc1OpG7Dq~DWlzEOjnnqn-ECXPDDYC~xTfe3wuV7oowfkj3z8-0NX2DECEjguiR-xhbIlG8FbTQnPHw01wea5s9VGNxKglt5yj8y9JKttYLLIB78uf1nALwaTalxnFR3fStNdEpX4d~yFpKNiI-feAqwXFyTwPx7jtqIBRXccWsPBeC7wfuRH2zWQYDZBZiDk4tslRi98hJ~1ER5ktjRISnP1OOpGw-xL3MsvGmd~MZEqSgdZcaUIhrqcQToYtkcjeSsZVEg1t4wwTyjKp~i2qRI8o-mh7GFtg__',
                        name: 'Mens',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                color: Colors.red[300],
                width: 350,
                height: 200,
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '50-40% OFF \n Now in (product) \n All colours',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Shop now'))
                    ],
                  ),
                ),
              ),

              // Container 2
              Container(
                margin: EdgeInsets.only(top: 30),
                color: Colors.blue[500],
                padding: EdgeInsets.only(left: 10),
                width: 350,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Deal of the Day \n 22h 55m 20s',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('View all ->'))
                  ],
                ),
              ),

              // Container 3
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://s3-alpha-sig.figma.com/img/1833/6267/7f20edafc96efa0bc82904f360f38fd3?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jCu1fWGR1LGbAjqRe0Cp4lY3BZvDDFVCXBuTUAvRGw-EYg2kvK7O557ggrJGO7lyDqQEhJAImJ9kxoGSolp8dGX0H11EuYmqF5D~fDPAGh4SgFeLF5F0KpRIbZqINB9KQ-9Pe-26TuG18NRRGrnP42Fbl8l4LLW3DolqtiUC7NKwALlp708voc1ojVLKtFMZXms82IyxLpmorl6Xtr~FUKNz8Q~kcOeyaa2-KfuukpaXUHR1JnXK~1Ex2MLvjJNm-2VuzMVU~8gG86FZ63zBEOjgx49032y-EoIxOAwKl5VQGQJ~4HpjcUyegMkheWxlKFfYxE4Id78Rs0ac6Z3LFQ__'),
                    Text(
                        'Special Offer \n we make sure you get the \n offer you need at best prices')
                  ],
                ),
              ),

              // Container 4
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://s3-alpha-sig.figma.com/img/1d74/6cea/0da6aeb7e75dcecf091dbf019e715b1b?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nN9gkvSjCK8YhdOitNNopLLhpBoMZG-iUqKXC0Wh29sITDNF~goo1UjPzTtXNwwA7xGhytr6I9rRb6XZSx5uFPW9dy60pVX-SiaIg9cDg0wE3~uNOyUxZigZICumsHcJU7ssl09dGL6m7KCkgRy6PPAUGyRK5XF~gSRRouX7ea12t57JKggWYuGQJRjKbLD5rGCi7RMobBWgy2VPSdTiIqCMl93lC7RhAVBF6MqFacJr6jOEzWFWjX-hPYJY3cmhMvidVWV94WV2hgjHXBmC1zrxe6bfqK4eU9MLmJ9xRKN8LJ8uhc9aCHr80EcR371oXJYH9G4VpncRQrLjKFu9Sg__'),
                    Text('Flat and Heels \n stand a chance to get \n rewarded'),
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
