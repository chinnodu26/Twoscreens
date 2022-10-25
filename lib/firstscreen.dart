import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'spotify.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> title = [
    'GROCERES',
    'FOOD',
    'BUATY',
    // 'ACCESSORIES',
  ];
  List<String> images = [
    'https://thumbs.dreamstime.com/b/groceries-paper-bag-vector-illustration-97077851.jpg',
    'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/59676/fast-food-clipart-clipart-xl.png',
    'https://thumbs.dreamstime.com/z/beautiful-girl-doing-makeup-beautiful-girl-doing-makeup-vector-illustration-170911937.jpg',
    //'https://thumbs.dreamstime.com/b/black-computer-peripherals-accessories-icons-black-computer-peripherals-accessories-icons-vector-icon-set-111230077.jpg',
  ];
  List<String> price = [
    '\$52.30',
    '\$28.00',
    '\$23.00',
    // '\$40.30',
  ];
  List colorcode = [
    Color.fromARGB(255, 235, 186, 81),
    Color.fromARGB(255, 156, 223, 240),
    Color.fromARGB(255, 240, 163, 160),
    Color.fromARGB(255, 214, 158, 240)
  ];

  //Tabbar
  // final GlobalKey<ScaffoldState> _key = GlobalKey();
  // bool _flag = true;
  // int _currentIndex = 0;

  // final List<Widget> _children = [
  //   Text(
  //     " menu",
  //     style: GoogleFonts.inter(
  //       decoration: TextDecoration.none,
  //       fontSize: 13,
  //       fontWeight: FontWeight.w500,
  //       color: Color(0xffFFFFFF),
  //     ),
  //   ),
  //   Text(
  //     " tag",
  //     style: GoogleFonts.inter(
  //       decoration: TextDecoration.none,
  //       fontSize: 13,
  //       fontWeight: FontWeight.w500,
  //       color: Color(0xffFFFFFF),
  //     ),
  //   ),
  //   Text(
  //     "Person",
  //     style: GoogleFonts.inter(
  //       decoration: TextDecoration.none,
  //       fontSize: 13,
  //       fontWeight: FontWeight.w500,
  //       color: Color(0xffFFFFFF),
  //     ),
  //   ),
  // ];

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   currentIndex: _currentIndex,
      //   // onTap: onTabTapped,
      //   unselectedItemColor: Colors.black45,
      //   showUnselectedLabels: true,

      //   fixedColor: Colors.black,
      //   items: [
      //     BottomNavigationBarItem(
      //       //backgroundColor: Colors.blue,
      //       icon: Padding(
      //         padding: const EdgeInsets.all(5.0),
      //         child: Icon(
      //           Icons.list_alt_outlined,
      //           color: Color.fromARGB(255, 156, 197, 235),
      //         ),
      //       ),

      //       //label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       //backgroundColor: Colors.yellow,
      //       icon: Padding(
      //         padding: const EdgeInsets.all(5.0),
      //         child: Icon(
      //           Icons.sell_outlined,
      //           color: Color.fromARGB(255, 156, 197, 235),
      //         ),
      //       ),
      //       //label: 'tag',
      //     ),
      //     BottomNavigationBarItem(
      //       //backgroundColor: Colors.greenAccent,
      //       icon: Padding(
      //         padding: const EdgeInsets.all(5.0),
      //         child: Icon(
      //           Icons.person_outline,
      //           color: Color.fromARGB(255, 156, 197, 235),
      //         ),
      //       ),
      //       //label: 'Account',
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 175, 215, 241),
                        Color.fromARGB(255, 227, 240, 245),
                      ]),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://metawitches.files.wordpress.com/2019/06/nat-pic-for-dany-nat.png',
                          ),
                          radius: 25,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          Positioned(
            top: 110,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcom back,',
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 104, 170, 231),
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Scarlett Johansson',
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 26, 128, 196),
                      fontSize: 28,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Positioned(
            top: 185,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(children: [
                Container(
                  height: 65,
                  width: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.blue),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sending\ntoday',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '\$ 100.30',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 26,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.black26,
                  filled: true,
                  prefixIcon: IconTheme(
                      data: IconThemeData(color: Color(0xff181818), size: 30),
                      child: Icon(
                        Icons.search,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: "Search your spending",
                ),
                style: GoogleFonts.inter(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xf525252)),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 380,
            child: Container(
              height: 525,
              child: ListView.separated(
                  itemCount: images.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: colorcode[index],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    '${title[index]}',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(
                              '${images[index]}',
                              height: 100,
                              width: 70,
                            ),
                            Text(
                              '${price[index]}',
                              style: GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 96, 176, 241),
                                  fontSize: 26,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  color: Colors.blue[100]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 20,
                                    color: Colors.white60,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  color: Colors.blue[100]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 20,
                                    color: Colors.white60,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 2)),
            ),
          ),
        ],
      ),
    );
  }
}
