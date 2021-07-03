import 'package:cleanhomeapp/ui/pages/CalendarPage.dart';
import 'package:cleanhomeapp/ui/pages/MainPage.dart';
import 'package:cleanhomeapp/ui/pages/task_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  int pageIndex=0;
 List<Widget> pageList=<Widget>[
      MainPage(),
      CalendarPage(),
      TaskPage(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       currentIndex: pageIndex,
       onTap: (value) {
         setState(() {
           pageIndex = value;
         });
       },
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar"),
         BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Calendar"),
       ],
       backgroundColor: Colors.white,
       selectedItemColor:Color(0xFF1D1D35).withOpacity(0.7),
       unselectedItemColor: Color(0xFF1D1D35).withOpacity(0.32),
       selectedIconTheme: IconThemeData(color: Color(0xFF00BF6D)),
       showUnselectedLabels: true,
     ),
    );
  }
}
