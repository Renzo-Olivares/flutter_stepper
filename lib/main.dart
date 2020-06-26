import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter/scheduler.dart';
import 'article.dart';

void main() {
  //timeDilation = 10.0;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _isLoggedIn = false;

  List<Widget> _steps = [
    Article(
        fill: Colors.lightGreen,
        title: 'Android 11',
        subtitle: 'Beta Release',
        body: 'hello world'),
    Article(
        fill: Colors.purple,
        title: 'Fuchsia',
        subtitle: 'Beta Release',
        body: 'hallo welt'),
    Article(
        fill: Colors.blue,
        title: 'Flutter',
        subtitle: 'Beta Release',
        body: 'Nǐ hǎo, shìjiè'),
    Article(
        fill: Colors.yellow,
        title: 'ChromeOS',
        subtitle: 'Beta Release',
        body: 'salve mundi'),
    Article(
        fill: Colors.brown,
        title: 'iOS 14',
        subtitle: 'Beta Release',
        body: 'hola mundo'),
    Article(
        fill: Colors.indigo,
        title: 'Windows',
        subtitle: 'Beta Release',
        body: 'bonjour le monde'),
  ];

  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 0? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('1',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 1? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('2',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 2? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('3',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 3? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('4',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 4? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 4;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('5',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 24.0,
                    height: 24.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 4.0,
                      color: _selectedIndex == 5? Colors.blue: Colors.grey,
                      shape: CircleBorder(),
                      child: InkWell(
                        customBorder: CircleBorder(),
                        onTap: (){
                          setState(() {
                            _selectedIndex = 5;
                          });
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Text('6',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
              ),
              PageTransitionSwitcher(
                  duration: const Duration(milliseconds: 300),
                  reverse: !_isLoggedIn,
                  transitionBuilder: (Widget child, Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return SharedAxisTransition(
                      child: child,
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: SharedAxisTransitionType.vertical,
                    );
                  },
                  child: _steps.elementAt(_selectedIndex)),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onPress() {}
}
