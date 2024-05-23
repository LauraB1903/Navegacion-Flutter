import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App noticias',
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
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SportsPage(),
    TechnologyPage(),
    videoPage(),
  ];

  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Inicio',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Deportes',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.computer),
      label: 'Tecnología',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.movie),
      label: 'videos',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Noticias'),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Inicio', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.sports, color: Colors.white),
                title: Text('Deportes', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.computer, color: Colors.white),
                title: Text('Tecnología', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.movie, color: Colors.white),
                title: Text('videos', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.purple,
        selectedItemColor: Colors.purple,
        items: _bottomNavigationBarItems,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Inicio',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}

class SportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Deportes',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}

class TechnologyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Tecnología',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}

class videoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Video',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}
