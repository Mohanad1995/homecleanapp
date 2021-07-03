import 'package:cleanhomeapp/ui/pages/CalendarPage.dart';
import 'package:cleanhomeapp/ui/pages/ColorScheme.dart';
import 'package:cleanhomeapp/ui/pages/Details.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String selectedType = "initial";
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            centerTitle: true,
            expandedHeight: 120.0,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Your plan'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Selected Cleaning',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.97,
            children: <Widget>[
              InkWell(
                onTap: () {
                  changeCleaningType("initial");
                },
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/4.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Initial Cleaning",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "initial")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.deepOrange,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("upkeep");
                },
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/5.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Upkeep Cleaning",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "upkeep")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.deepOrange,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Selected Frequecy',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.5,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: InkWell(
                  onTap: () {
                    changeFrequency("weekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: (selectedFrequency == "weekly")
                        ? BoxDecoration(
                            color: pink,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Weekly",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: (selectedFrequency == "weekly")
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  changeFrequency("biweekly");
                },
                child: Container(
                  // height: 50,
                  // width: 110,
                  decoration: (selectedFrequency == "biweekly")
                      ? BoxDecoration(
                          color: pink,
                          borderRadius: BorderRadius.all(Radius.circular(10)))
                      : BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "Bi-Weekly",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (selectedFrequency == "biweekly")
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: InkWell(
                  onTap: () {
                    changeFrequency("monthly");
                  },
                  child: Container(
                    decoration: (selectedFrequency == "monthly")
                        ? BoxDecoration(
                            color: pink,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: (selectedFrequency == "monthly")
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Selected Extras',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: <Widget>[
              extraWidget("organise", "Organise", false),
              extraWidget("fridge", "Inside Fridge", true),
              extraWidget("blind", "Small Blinds", true),
            ],
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: <Widget>[
              Hero(tag:'Test',child: extraWidget("organise", "Grocery", true)),
              extraWidget("garden", "Patio", false),
              extraWidget("blind", "Curtains", true),
            ],
          ),
          SliverToBoxAdapter(
            child: InkWell(
              onTap: openCalendarPage,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: purple),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeCleaningType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailsPage()));
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(shape: BoxShape.circle, color: purple),
                child: Container(
                  margin: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/image/icons/$img.png'),
                          fit: BoxFit.contain)),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true)
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  void openCalendarPage() {
    Navigator.pushReplacement(
        context,
        PageTransition(
            child: CalendarPage(),
            type: PageTransitionType.bottomToTop,
            duration: (Duration(seconds: 1))));
  }
}
