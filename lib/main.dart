import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String expression = '00';
  String result = '00';
  // String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      result,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ))),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    expression,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 157, 156),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(() {
                          setState(() {
                            expression = '0';
                            result = '0';
                          });
                        }, 'AC'),
                        button(() {
                          setState(() {
                            expression = '($expression)';
                          });
                        }, '()'),
                        button(() {
                          setState(() {
                            expression = expression + '%';
                          });
                        }, '%'),
                        button(() {
                          setState(() {
                            expression = expression + '÷';
                          });
                        }, '÷')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(() {
                          setState(() {
                            expression = expression + '7';
                          });
                        }, '7'),
                        button(() {
                          setState(() {
                            expression = expression + '8';
                          });
                        }, '8'),
                        button(() {
                          setState(() {
                            expression = expression + '9';
                          });
                        }, '9'),
                        button(() {
                          setState(() {
                            expression = expression + 'x';
                          });
                        }, 'x')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(() {
                          setState(() {
                            expression = expression + '4';
                          });
                        }, '4'),
                        button(() {
                          setState(() {
                            expression = expression + '5';
                          });
                        }, '5'),
                        button(() {
                          setState(() {
                            expression = expression + '6';
                          });
                        }, '6'),
                        button(() {
                          setState(() {
                            expression = expression + '-';
                          });
                        }, '-')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(() {
                          setState(() {
                            expression = expression + '1';
                          });
                        }, '1'),
                        button(() {
                          setState(() {
                            expression = expression + '2';
                          });
                        }, '2'),
                        button(() {
                          setState(() {
                            expression = expression + '3';
                          });
                        }, '3'),
                        button(() {
                          setState(() {
                            expression = expression + '+';
                          });
                        }, '+')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(() {
                          setState(() {
                            expression = expression + '0';
                          });
                        }, '0'),
                        button(() {
                          setState(() {
                            expression = expression + '.';
                          });
                        }, '.'),
                        button(() {
                          setState(() {
                            expression.length.toInt() = expression.length - 1 ;
                          });
                        }, 'Del'),
                        button(() {}, '=')
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

Widget button(VoidCallback onTap, String text) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      backgroundColor: Colors.grey,
      // radius: 25,
      minRadius: 25,
      maxRadius: 45,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
