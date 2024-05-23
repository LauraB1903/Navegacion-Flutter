import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App noticias',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
    EntertainmentPage(),
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
      label: 'Entretenimiento',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicacion de noticias'),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
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
                  color: Color.fromARGB(255, 61, 237, 243),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Inicio', style: TextStyle(color: Colors.black87)),
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.sports, color: Colors.black),
                title: Text('Deportes', style: TextStyle(color: Colors.black87)),
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.computer, color: Colors.black),
                title: Text('Tecnología', style: TextStyle(color: Colors.black87)),
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.movie, color: Colors.black),
                title: Text('Entretenimiento', style: TextStyle(color: Colors.black87)),
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
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.black87,
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
            'Página de inicio',
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
            'Página de deportes',
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
            'Página de tecnología',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}

class EntertainmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Página de entretenimiento',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }
}
