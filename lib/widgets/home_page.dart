import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Dashboard',
      style: optionStyle,
    ),
    HomePage(),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        padding: const EdgeInsets.only(top: 70, left: 20),
        child: Row(
          children: [
            Icon(Icons.arrow_back, size: 30, color: Colors.black54),
            Expanded(child: Container()),
            Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 180),
                  decoration: BoxDecoration(),
                  child: Text(
                    "Class 12th (6AM)",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 238),
                  decoration: BoxDecoration(),
                  child: Text(
                    "View Full Report >",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 17, 149, 22),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 70, left: 20),
        child: Row(
          children: [
            Expanded(child: Container()),
            Row(
              children: <Widget>[
                Container(
                  width: 105,
                  height: 80,
                  margin: const EdgeInsets.only(right: 180),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 129, 129),
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    "Pending Fees",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 105,
                  height: 80,
                  margin: const EdgeInsets.only(right: 180),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 132, 216, 135),
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    "Total Collected",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 17, 149, 22),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
