import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    // final bottomWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 30),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Let's calculate",
                      style: TextStyle(
                          color: Color(0xff484848),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "your current BMI",
                      style: TextStyle(
                          color: Color(0xff484848),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "You can find out whether you are",
                      style: TextStyle(
                          color: Color(0xff7F7F7F),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "overweight, underweight or ideal weight",
                      style: TextStyle(
                          color: Color(0xff7F7F7F),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 105,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xffE2E2E2), width: 2)),
                      child: Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                  Container(
                      width: 105,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xffE2E2E2), width: 2)),
                      child: Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                  Container(
                      width: 105,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Color(0xffE2E2E2), width: 2)),
                      child: Center(
                        child: Text(
                          "Other",
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    height: 70,
                    child: TextField(
                      // controller: _controller,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Age',
                          hintStyle: TextStyle(color: Color(0xffC4C4C4))),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 70,
                    child: TextField(
                      // controller: _controller,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          label: Text.rich(TextSpan(
                            children: <InlineSpan>[
                              WidgetSpan(
                                child: Text(
                                  'Height',
                                  style: TextStyle(
                                    // color: Color(0xffC4C4C4),
                                  ),
                                ) 
                              )
                            ]
                          )),
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 70,
                    child: TextField(
                      // controller: _controller,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Weight',
                          hintStyle: TextStyle(color: Color(0xffC4C4C4))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 180),
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff69A6F9),
                  borderRadius: BorderRadius.circular(40)),
              // color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
