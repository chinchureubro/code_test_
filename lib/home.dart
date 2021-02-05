import 'package:code_test/bed_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042c38),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Control\nPannel",
                    style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Image.asset('assets/user.png', fit: BoxFit.fill),
                ),
              ],
            ),
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 7,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f8fb),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Align(

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("All Rooms",style: TextStyle(fontSize: 20,color: Color(0xff06326b),fontWeight: FontWeight.bold),),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                child: buildCardItemSingle(imagePath: "assets/bed.png",title: "Bed Room",description: "4 Lights"),
                            onTap: ()
                              {
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: BedRoom()));
                              },),
                            InkWell(child:buildCardItemSingle(imagePath: "assets/room.png",title: "Living Room",description: "2 Lights")),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(child:buildCardItemSingle(imagePath: "assets/kitchen.png",title: "Kitchen",description: "5 Lights")),
                            InkWell(child:buildCardItemSingle(imagePath: "assets/bathtube.png",title: "Bath Room",description: " 1 Lights")),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(child:buildCardItemSingle(imagePath: "assets/house.png",title: "Out Door",description: "5 Lights")),
                            InkWell(child:buildCardItemSingle(imagePath: "assets/balcony.png",title: "Balcony",description: "2 Lights")),
                          ],
                        ),
                        SizedBox(height: 10,),

                      ],

                    ),
                  ],

                ),
              ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(left: 80),
                child:Image.asset('assets/bulb.png', fit: BoxFit.fill),
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(right: 2,left: 2),
                child:Image.asset('assets/Icon feather-home.png', fit: BoxFit.fill),
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
    padding: EdgeInsets.only(right: 80),
    child: Image.asset('assets/Icon feather-settings.png', fit: BoxFit.fill),
    ),
    title: new Text(''),
          ),

        ],
      ),

    );
  }

  Widget buildCardItemSingle(
      {String imagePath, String title, String description}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10) )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(right: 10,left: 10),

                  child: Image.asset(
                    "$imagePath",
                    height: 80,
                    width: 80,
                    fit: BoxFit.scaleDown,
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10,left: 10),
              child:  Column(
                children: [
                  Container(
                      child: Text(
                        "$title",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                      )),
                ],
              ),),
            )
           ,
            SizedBox(
              height: 4,
            ),
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10,left: 10),
              child:Text(
                "$description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Color(0xffffc06d)),
              ) ,),
            )
            ,
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
