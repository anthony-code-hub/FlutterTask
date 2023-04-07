import 'package:flutter/material.dart';
import 'package:myapp/first_section_content.dart';
import 'package:myapp/card_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ButtonStyle srButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 15, 54, 87),
    shape: StadiumBorder(),
  );

  final ButtonStyle ulButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    padding: EdgeInsets.zero,
    shape: CircleBorder(),
  );

  final ButtonStyle recordingButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 128, 36, 30),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
        side: BorderSide(width: 0.5, color: Colors.white)),
  );

  final TextStyle overlayCountStyle = TextStyle(
      color: Colors.red,
      fontSize: 100,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'Futura');

  void _showOverlay(BuildContext rcontext) async {
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry overlayEntry1;
    OverlayEntry overlayEntry2;
    OverlayEntry overlayEntry3;
    overlayEntry1 = OverlayEntry(builder: (contect) {
      return Positioned(
        left: 0.0,
        top: 0.0,
        child: ClipRect(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
            // child: Material(
            //   color: Colors.transparent,
            //   child: Container(
            //     alignment: Alignment.bottomCenter,
            //     padding: EdgeInsets.only(bottom: 20),
            //     child: Text(
            //       "3",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(color: Colors.red, fontSize: 96),
            //     ),
            //   ),
            // ),
            child: Stack(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "3",
                      textAlign: TextAlign.center,
                      style: overlayCountStyle,
                    ),
                  ),
                ),
                Positioned(
                  top: 745,
                  left: 215,
                  child: Center(
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: new BoxDecoration(
                          color: Colors.red[900],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.red[400],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    overlayEntry2 = OverlayEntry(builder: (contect) {
      return Positioned(
        left: 0.0,
        top: 0.0,
        child: ClipRect(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
            child: Stack(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: overlayCountStyle,
                    ),
                  ),
                ),
                Positioned(
                  top: 745,
                  left: 215,
                  child: Center(
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: new BoxDecoration(
                          color: Colors.red[900],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.red[400],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    overlayEntry3 = OverlayEntry(builder: (contect) {
      return Positioned(
        left: 0.0,
        top: 0.0,
        child: ClipRect(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
            child: Stack(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "1",
                      textAlign: TextAlign.center,
                      style: overlayCountStyle,
                    ),
                  ),
                ),
                Positioned(
                  top: 745,
                  left: 215,
                  child: Center(
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: new BoxDecoration(
                          color: Colors.red[900],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.red[400],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });

    overlayState.insert(overlayEntry1);
    await Future.delayed(const Duration(seconds: 1));
    overlayEntry1.remove();
    overlayState.insert(overlayEntry2);
    await Future.delayed(const Duration(seconds: 1));
    overlayEntry2.remove();
    overlayState.insert(overlayEntry3);
    await Future.delayed(const Duration(seconds: 1));
    overlayEntry3.remove();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // final widgetKey = GlobalKey();
    return DefaultTabController(
        length: 2,
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(30),
          child: Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              backgroundColor: Colors.black,
              title: RichText(
                  text: TextSpan(
                      text: "APP",
                      style: TextStyle(color: Colors.white),
                      children: const <TextSpan>[
                    TextSpan(
                      text: "TITLE",
                      style: TextStyle(color: Colors.red),
                    ),
                  ])),
              actions: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.green[600],
                  child: ClipOval(
                    child: Image.network(
                      "assets/uchiha.jpg",
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.grey,
                dividerColor: Colors.white,
                labelPadding: EdgeInsets.only(right: 10),
                tabs: [
                  Tab(
                    child: Text(
                      "MAIN",
                    ),
                  ),
                  Tab(text: "LEADERBOARD")
                ],
              ),
            ),
            body: Container(
              color: Colors.black,
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      first_section_content(),
                      card_content(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // key: widgetKey,
                            width: 110,
                            height: 110,
                            padding: EdgeInsets.all(20),
                            child: ElevatedButton(
                              onPressed: () {
                                _showOverlay(context);
                                //print(MediaQuery.of(context).size.width);
                                //print(MediaQuery.of(context).size.height);
                                // () async {
                                //   RenderBox renderbox = widgetKey.currentContext!
                                //       .findRenderObject() as RenderBox;
                                //   Offset position =
                                //       renderbox.localToGlobal(Offset.zero);
                                //   double x = position.dx;
                                //   double y = position.dy;
                                //   print(x);
                                // };
                              },
                              style: recordingButtonStyle,
                              child: Container(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: 50,
                                margin: EdgeInsets.all(10),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: srButtonStyle,
                                  child: Text("Save Recording",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: ulButtonStyle,
                                  child: Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  // color: Colors.white,
                                  // icon: Icon(
                                  //   Icons.file_upload_outlined,
                                  //   color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}
