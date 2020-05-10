import 'package:flutter/material.dart';
import 'package:flutter_travel_app/search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  void initState() {
    currentPageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Trip',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Advisor',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                          ],
                        ),
                      ),
                      Text('Thursday, October 10')
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Where To?',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int itemIndex) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/trip.png')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                            Positioned(
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.white),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Featured Destinations',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'TripAdvisor',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Text('2019 Travel choices'),
                                      ],
                                    )
                                  ],
                                ),
                                margin: const EdgeInsets.only(
                                    bottom: 80, left: 20, right: 20),
                                padding: const EdgeInsets.all(10),
                              ),
                              bottom: 0,
                              left: 0,
                              right: 0,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          changePage(0);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                            ),
                            color: currentPageIndex == 0
                                ? Colors.green
                                : Colors.white,
                          ),
                          child: Icon(
                            Icons.explore,
                            color: currentPageIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          changePage(1);
                        },
                        child: Container(
                          height: 50,
                          color: currentPageIndex == 1
                              ? Colors.green
                              : Colors.white,
                          child: Icon(
                            Icons.work,
                            color: currentPageIndex == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          changePage(2);
                        },
                        child: Container(
                          height: 50,
                          color: currentPageIndex == 2
                              ? Colors.green
                              : Colors.white,
                          child: Icon(
                            Icons.notifications,
                            color: currentPageIndex == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          changePage(3);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            color: currentPageIndex == 3
                                ? Colors.green
                                : Colors.white,
                          ),
                          child: Icon(
                            Icons.account_circle,
                            color: currentPageIndex == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  changePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }
}
