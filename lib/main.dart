import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: RunApp());
  }
}

class RunApp extends StatefulWidget {
  @override
  _RunAppState createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  String x = "";
  int signCount = 0;
  void check(String y) {
    setState(() {
      x = x + y;
    });
  }

  int calculate(String s) {
    String p = "";
    String q = "";
    String ch = "";
    for (int i = 0; i < s.length; i++) {
      if ((((s.codeUnitAt(i) == '+'.codeUnitAt(0)) ||
                  (s.codeUnitAt(i) == '-'.codeUnitAt(0))) ||
              (s.codeUnitAt(i) == '*'.codeUnitAt(0))) ||
          (s.codeUnitAt(i) == '/'.codeUnitAt(0)) ||
          s.codeUnitAt(i) == '%'.codeUnitAt(0)) {
        q = p;
        ch = s[i];
        p = "";
      } else {
        p = p + s[i];
      }
    }
    int b = int.parse(p);
    int a = int.parse(q);
    if (ch == '+') {
      return a + b;
    } else {
      if (ch == '-') {
        return (a - b);
      } else {
        if (ch == '*') {
          return (a * b);
        } else {
          if (ch == '/') {
            return a ~/ b;
          } else {
            if (ch == '%') return a % b;
          }
        }
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 180,
            width: double.infinity,
            color: Colors.orange,
            child: Text(x,
                style: TextStyle(
                  fontSize: 48,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        x = "";
                        signCount = 0;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          'AC',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('1');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('4');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('7');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '7',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        String p = x.substring(x.length - 1, x.length);
                        if (p == '+') {
                          signCount -= 1;
                        } else {
                          if (p == "-") {
                            signCount -= 1;
                          } else {
                            if (p == '*') {
                              signCount -= 1;
                            } else {
                              if (p == "/") {
                                signCount -= 1;
                              } else {
                                if (p == "%") {
                                  signCount -= 1;
                                }
                              }
                            }
                          }
                        }
                        x = x.substring(0, x.length - 1);
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Icon(Icons.backspace,
                            size: 40, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('2');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('5');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('8');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '8',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      signCount += 1;
                      if (signCount == 1) {
                        check("%");
                      } else {
                        x = calculate(x).toString();
                        signCount -= 1;
                        check("%");
                      }
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '%',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('3');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('6');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      check('9');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '9',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      signCount += 1;
                      if (signCount == 1) {
                        check('/');
                      } else {
                        x = calculate(x).toString();
                        signCount -= 1;
                        check("/");
                      }
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      signCount += 1;
                      if (signCount == 1) {
                        check('*');
                      } else {
                        x = calculate(x).toString();
                        signCount -= 1;
                        check('*');
                      }
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '*',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      signCount += 1;
                      if (signCount == 1) {
                        check('-');
                      } else {
                        x = calculate(x).toString();
                        signCount -= 1;
                        check('-');
                      }
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      signCount += 1;
                      if (signCount == 1) {
                        check('+');
                      } else {
                        x = calculate(x).toString();
                        signCount -= 1;
                        check('+');
                      }
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
          Row(children: <Widget>[
            FlatButton(
              onPressed: () {
                check('0');
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                check('.');
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  var p = calculate(x);
                  x = p.toString();
                  signCount = 0;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 30,
            width: 50,
          )
        ],
      ),
    );
  }
}
