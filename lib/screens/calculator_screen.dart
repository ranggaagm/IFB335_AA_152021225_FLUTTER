import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = "";
  String _input = "";

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "";
        _input = "";
      } else if (buttonText == "=") {
        _eval();
      } else {
        _input += buttonText;
      }
    });
  }

  void _eval() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(_input);
      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);

      _output = result.toString();
    } catch (e) {
      _output = "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF062AAA),
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              _input,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              _output,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: buttons.length,
                itemBuilder: (context, index) {
                  return CalculatorButton(
                    buttonText: buttons[index],
                    onPressed: () {
                      _onButtonPressed(buttons[index]);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  CalculatorButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[850],
          onPrimary: Colors.white,
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}

List<String> buttons = [
  '7',
  '8',
  '9',
  '/',
  '4',
  '5',
  '6',
  '*',
  '1',
  '2',
  '3',
  '-',
  'C',
  '0',
  '=',
  '+',
];

void eval(String input) {}
