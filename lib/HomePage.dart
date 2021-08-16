import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signlanguaglearning/BottomNaigationPages/LessonsPages.dart';
import 'package:signlanguaglearning/my_drawer_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> widgetpages = <Widget>[
    LessonsPages(),
    Text(
      'Soon',
      style: optionStyle,
    ),
    Text(
      'Soon',
      style: optionStyle,
    ),
    Text(
      'Soon',
      style: optionStyle,
    ),
    Text(
      'Soon',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ASL",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: HexColor("#b30e11"),
        actions: [
          Image.asset("Images/SignLogo.png"),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeadrDrawer(),
                ListTile(
                  leading: Icon(
                    Icons.account_balance_outlined,
                    size: 30,
                  ),
                  title: Text(
                    "about",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 20),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 20),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 20),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  title: Text(
                    "Log out",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed("signup");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body:
          // child: _widgetOptions.elementAt(_selectedIndex),
          widgetpages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFAD1C1C),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_key),
            label: 'Treasure',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort_by_alpha),
            label: 'Alphabet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Study',
          ),
        ],
      ),
    );
  }
}
