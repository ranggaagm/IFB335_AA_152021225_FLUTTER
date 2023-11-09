import 'package:flutter/material.dart';

void main() {
  runApp(KonversiSuhu());
}

class KonversiSuhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double celsius = 0;
  double fahrenheit = 0;
  double reamur = 0;

  void convertTemperatures(String inputTemp) {
    setState(() {
      if (inputTemp.isEmpty) {
        celsius = 0;
        fahrenheit = 0;
        reamur = 0;
      } else {
        celsius = double.parse(inputTemp);
        fahrenheit = (celsius * 9 / 5) + 32;
        reamur = celsius * 4 / 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Konversi Suhu'),
        backgroundColor:
             Color(0xFF062AAA), // Mengatur warna latar belakang AppBar menjadi hitam
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 200,bottom: 50),
              child: Text(
                'Enter Celsius',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  convertTemperatures(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter temperature in Celsius',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fahrenheit: $fahrenheit°F',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Reamur: $reamur°R',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}