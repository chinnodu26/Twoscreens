import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:twoscreens/firstscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list1_title = [
    'Data Science',
    'Data Analyst',
    'Data Engineer',
    'Desiner'
  ];

  List list1_colorcode = [
    Color.fromARGB(255, 235, 186, 81),
    Color.fromARGB(255, 242, 247, 244),
    Color.fromARGB(255, 243, 238, 236),
    Color.fromARGB(255, 248, 242, 239)
  ];
  List<String> list2_images = [
    'https://sds-platform-private.s3-us-east-2.amazonaws.com/uploads/B91-Data-Scientist-Inforgraphic.jpg',
    'https://sds-platform-private.s3-us-east-2.amazonaws.com/uploads/B91-Data-Scientist-Inforgraphic.jpg',
    'https://sds-platform-private.s3-us-east-2.amazonaws.com/uploads/B91-Data-Scientist-Inforgraphic.jpg',
  ];
  List<String> list2_title = [
    'Data Science',
    'Machine Learning',
    'Big Data',
  ];
  List<String> list2_subtitle = [
    'jphns Hopkins University',
    'University of Washington',
    'UC san Diego'
  ];
  List<String> list2_countcoures = [
    '17 Cources',
    '8 Cources',
    '10 Cources',
  ];
  List<String> list2_discription = [
    'Launch your career in data science.\nA Seventy- course indroduction to \ndata science develop and tought by \nleading proffecers',
    'Launch your career in data science.\nA Seventy- course indroduction to \ndata science develop and tought by \nleading proffecers',
    'Launch your career in data science.\nA Seventy- course indroduction to \ndata science develop and tought by \nleading proffecers',
  ];
  //  List<String> list2_images = [
  //   '',
  // ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool _flag = true;
  int _currentIndex = 0;

  final List<Widget> _children = [
    Text(
      " Home",
      style: GoogleFonts.inter(
        decoration: TextDecoration.none,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Color(0xffFFFFFF),
      ),
    ),
    Text(
      " Star",
      style: GoogleFonts.inter(
        decoration: TextDecoration.none,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Color(0xffFFFFFF),
      ),
    ),
    Text(
      "Menu book",
      style: GoogleFonts.inter(
        decoration: TextDecoration.none,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Color(0xffFFFFFF),
      ),
    ),
    // Text(
    //   "Account",
    //   style: GoogleFonts.inter(
    //     decoration: TextDecoration.none,
    //     fontSize: 13,
    //     fontWeight: FontWeight.w500,
    //     color: Color(0xffFFFFFF),
    //   ),
    // ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        // onTap: onTabTapped,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,

        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.blue,
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.home_outlined),
            ),

            label: 'Home',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.yellow,
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.star_outline),
            ),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.greenAccent,
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.menu_book_outlined),
            ),
            label: 'Menu book',
          ),
          // BottomNavigationBarItem(
          //   //backgroundColor: Colors.greenAccent,
          //   icon: Padding(
          //     padding: const EdgeInsets.all(5.0),
          //     child: Icon(Icons.person_outline),
          //   ),
          //   label: 'Account',
          // ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(
          //   height: 15,
          // ),

          Container(
            height: 100,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 248, 96, 85),
                    Color.fromARGB(255, 247, 129, 121)
                  ]),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Recomended',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start a new career',
                  style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return FirstScreen();
                    }));
                  },
                  child: Container(
                    height: 35,
                    child: ListView.separated(
                      itemCount: list1_title.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            // gradient: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.topRight,
                            //     colors: [
                            //       Color.fromARGB(251, 241, 166, 68),
                            //       Color.fromARGB(255, 247, 180, 80)
                            //     ]),
                            color: list1_colorcode[index],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${list1_title[index]}',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: 5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 525,
                  child: ListView.separated(
                      itemCount: list2_images.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(12), // Image border
                                  child: SizedBox.fromSize(
                                    //size: Size.fromRadius(100), // Image radius
                                    child: Image.network(
                                      '${list2_images[index]}',
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 175,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          //title
                                          '${list2_title[index]}',
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(
                                                  255, 131, 129, 250),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.blue),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          //rate coorcess
                                          '${list2_countcoures[index]}',
                                          style: GoogleFonts.poppins(
                                              color: Colors.black38,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      //subtitle
                                      '${list2_subtitle[index]}',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black45,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      //subtitle
                                      '${list2_discription[index]}',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black45,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 243, 235, 235)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                //subtitle
                                                'Data SCience',
                                                style: GoogleFonts.poppins(
                                                    color: Color.fromARGB(
                                                        255, 231, 121, 113),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromARGB(
                                                  255, 239, 245, 243)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                //subtitle
                                                'Data SCience',
                                                style: GoogleFonts.poppins(
                                                    color: Color.fromARGB(
                                                        255, 131, 231, 226),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
