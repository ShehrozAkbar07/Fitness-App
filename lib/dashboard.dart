import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.calendar_month),
          label: ('Add To Wisht List'),
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.settings),
          label: ('Settings'),
          backgroundColor: Colors.purple,
        ),
      ]),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * .45,
                // height: 300,
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Good Morning',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Color(0xff262626)),
                        ),
                        const Text('Shishir',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Color(0xff262626))),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(29),
                            borderSide:
                                const BorderSide(width: 2, color: Colors.white),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                        )),
                      ]),
                ),
              ),
              Container(
                height: 400,
                color: Colors.purple,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 480, left: 20, right: 20),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Vegetable(
                        'https://static.vecteezy.com/system/resources/thumbnails/001/892/258/small/woman-meditating-concept-for-yoga-meditation-relax-healthy-lifestyle-in-landscape-free-vector.jpg',
                        2),
                    SizedBox(
                      width: 18,
                    ),
                    Vegetable(
                        'https://static.vecteezy.com/system/resources/thumbnails/001/892/258/small/woman-meditating-concept-for-yoga-meditation-relax-healthy-lifestyle-in-landscape-free-vector.jpg',
                        2),
                    SizedBox(
                      width: 18,
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 20, right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Vegetable(
                      'https://static.vecteezy.com/system/resources/thumbnails/001/892/258/small/woman-meditating-concept-for-yoga-meditation-relax-healthy-lifestyle-in-landscape-free-vector.jpg',
                      2),
                  const SizedBox(
                    width: 18,
                  ),
                  Vegetable(
                      'https://static.vecteezy.com/system/resources/thumbnails/001/892/258/small/woman-meditating-concept-for-yoga-meditation-relax-healthy-lifestyle-in-landscape-free-vector.jpg',
                      2),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

Widget Vegetable(String imagelink, int vale) {
  return Container(
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: vale,
        child: Image.network(imagelink),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: const []),
        ),
      ),

      // child: ListTile(
      //   title: Text(
      //    data,
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   subtitle: Text(data2),
      // ),
    ]),
  );
}
