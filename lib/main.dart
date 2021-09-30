import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ////////////////////////calculation/////////////////////
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 40.0;
  double resultFontSize = 50.0;

  buttonPress(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equationFontSize = 40.0;
        resultFontSize = 50.0;
        equation = "0";
        result = "0";
      } else if (buttonText == "⌫") {
        equationFontSize = 50.0;
        resultFontSize = 40.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 40.0;
        resultFontSize = 50.0;

        expression=equation;
        expression=expression.replaceAll('×', '*');
        expression=expression.replaceAll('÷', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm=ContextModel();
          result='${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equationFontSize = 50.0;
        resultFontSize = 40.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation += buttonText;
        }
      }
    });
  }

  ///////////////////////Button////////////////////////
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.black,
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        onPressed: () => buttonPress(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            //fontFamily: "Ephesis",
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //brightness: Brightness.light,
        title: Center(
            child: Text(
          "Simple Calculator",
          style: TextStyle(
              fontSize: 40,
              fontFamily: "Ephesis",
              fontWeight: FontWeight.bold,
              color: Colors.black),
        )),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: TextStyle(
                  fontSize: equationFontSize, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              result,
              style: TextStyle(
                  //fontFamily: "Ephesis",
                  fontSize: resultFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("C", 1, Colors.redAccent),
                        buildButton("⌫", 1, Colors.blue),
                        buildButton("÷", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("7", 1, Colors.orangeAccent),
                        buildButton("8", 1, Colors.orangeAccent),
                        buildButton("9", 1, Colors.orangeAccent),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("4", 1, Colors.orangeAccent),
                        buildButton("5", 1, Colors.orangeAccent),
                        buildButton("6", 1, Colors.orangeAccent),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("1", 1, Colors.orangeAccent),
                        buildButton("2", 1, Colors.orangeAccent),
                        buildButton("3", 1, Colors.orangeAccent),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(".", 1, Colors.orangeAccent),
                        buildButton("0", 1, Colors.orangeAccent),
                        buildButton("00", 1, Colors.orangeAccent),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("×", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("-", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("+", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("=", 2, Colors.redAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
