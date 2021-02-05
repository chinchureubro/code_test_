import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042c38),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Bed\nRooms",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "4 Lights",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xfff1c93a),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: buildContainer(
                                  "Main Lights", 'assets/surface2.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: buildContainer1(
                                  "Dark Lights", 'assets/bed (1).png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: buildContainer("Bed Lights",
                                  'assets/furniture-and-household.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Flexible(
                fit: FlexFit.tight,
                flex: 6,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f8fb),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Intensity",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xff153f74),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/solution.png',
                                        fit: BoxFit.fill),
                                    Container(
                                      width: 300,
                                      child: Slider(
                                          activeColor: Color(0xfff8e398),
                                          value: _currentSliderValue,
                                          min: 0,
                                          max: 100,
                                          divisions: 5,
                                          label: _currentSliderValue
                                              .round()
                                              .toString(),
                                          onChanged: (double value) {
                                            setState(() {
                                              _currentSliderValue = value;
                                            });
                                          }),
                                    ),
                                    Image.asset('assets/solution-1.png',
                                        fit: BoxFit.fill),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Colors",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xff153f74),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xffff9b9b),
                                        radius: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff94eb9e),
                                        radius: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff94caeb),
                                        radius: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xffa594eb),
                                        radius: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xffde94eb),
                                        radius: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: IconButton(
                                          padding: EdgeInsets.all(2),
                                          icon: Container(
                                            child: Image.asset(
                                              'assets/+.png',
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Scenes",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xff153f74),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 250,
                                  child: ListView(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: buildContainerColors(
                                                    "Main Lights",
                                                    'assets/surface1.png',
                                                    0xffffaa96),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: buildContainerColors(
                                                    "Main Lights",
                                                    'assets/surface1.png',
                                                    0xffce93eb),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: buildContainerColors(
                                                    "Dark Lights",
                                                    'assets/surface1png',
                                                    0xff93d6eb),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: buildContainerColors(
                                                    "Bed Lights",
                                                    'assets/surface1.png',
                                                    0xff9ce293),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Flexible(flex: 3, fit: FlexFit.tight, child: Container()),
              Flexible(flex: 2, fit: FlexFit.tight, child: buildPowerIcon()),
              Flexible(
                fit: FlexFit.tight,
                flex: 5,
                child: Container(),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(left: 80),
              child: Image.asset('assets/bulb.png', fit: BoxFit.fill),
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(right: 2, left: 2),
              child:
                  Image.asset('assets/Icon feather-home.png', fit: BoxFit.fill),
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(right: 80),
              child: Image.asset('assets/Icon feather-settings.png',
                  fit: BoxFit.fill),
            ),
            title: new Text(''),
          ),
        ],
      ),
    );
  }

  Widget buildPowerIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child:  Image.asset('assets/Icon awesome-power-off.png', fit: BoxFit.fill),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    );
  }

  Container buildContainer(String title, String imagePAth) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePAth, fit: BoxFit.fill),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                color: Color(0xfff60c8c0),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  Container buildContainer1(String title, String imagePAth) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xfff60c8c0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePAth, fit: BoxFit.fill),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Container buildContainerColors(String title, String imagePAth, int color) {
    return Container(
      width: 160,
      height: 50,
      decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePAth, fit: BoxFit.fill),
          Text(
            title,
            style: TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
