import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
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
bool isSaved = false; // Track if the article is saved

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop())),
        body: Container(
            child: Center(
                child: Stack(children: <Widget>[
          Positioned.fill(
            //
            child: Image(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                margin: EdgeInsets.only(
                    bottom: 0, top:  MediaQuery.of(context).size.height * 0.3),
                 // Adjust bottom and top margin
                 padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.0,
                  bottom: MediaQuery.of(context).size.width * 0.05,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                 ),
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.05, 
                            bottom: MediaQuery.of(context).size.width * 0.05,
                            left: MediaQuery.of(context).size.width * 0.05,
                            right: MediaQuery.of(context).size.width * 0.05),
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 241, 238, 238)),
                        child: Column(
                          children: [
                            Text("2024-02-01714:13:00Z"),
                            Text(""),
                            Text(
                              "The U.S. military plans to strike targets in Iraq and Syria, including Iranian personnel and facilities, in response to a drone attack that killed 3 U.S. troops.",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(""),
                            Text("Tucker Reals, Eleanor Watson, Alex Sundndby"),
                          ],
                        )),
                    Text(
                      "U.S. officials have confirmed to CBS News that plans have been approved for a series of strikes over a number of days against targets — including Iranian personnel and facilities — inside Iraq and Sy... [+4065 chars]",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
          bottom: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
          child: IconButton(
            icon: Icon(
              Icons.bookmark,
              color: isSaved ? Colors.black : Colors.red, // Change color on press
              size: MediaQuery.of(context).size.width * 0.15,
            ),
             onPressed: () {
              setState(() {
                isSaved = !isSaved; // Toggle the save state
              });
            },
          ),
        ),
        ]))));
  }
}
