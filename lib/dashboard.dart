import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Set initial index to 2 (Home)
  int _currentIndex = 2;

  // List of images for each tab
  final List<String> _images = [
    'lib/assets/self.png',
    'lib/assets/performance.png',
    'lib/assets/good.png',
    'lib/assets/notification.png',
    'lib/assets/settings.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle, color: Colors.black),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 216, 151, 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.logout, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(height: 20),
                ...[
                  'Home',
                  'Self-Service Portal',
                  'Performance Analytics',
                  'Notifications',
                  'Settings',
                  'Help Center',
                  'Logout',
                ].map(
                  (title) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'lib/assets/connect1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            if (_currentIndex == 2)
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    color: const Color.fromARGB(255, 246, 246, 246),
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    child: Text(
                      'BASF CONNECT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade700,
                      ),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Image.asset(
                  _images[_currentIndex],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Self-Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Performance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
