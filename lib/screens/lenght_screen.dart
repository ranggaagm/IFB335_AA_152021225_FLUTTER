import 'package:flutter/material.dart';

class LengthConverter extends StatefulWidget {
  @override
  _LengthConverterState createState() => _LengthConverterState();
}

class _LengthConverterState extends State<LengthConverter> {
  double input = 0.0;
  double output = 0.0;

  String selectedInputUnit = 'km'; // Default input unit
  String selectedOutputUnit = 'km'; // Default output unit

  void updateValues(double value, String inputUnit, String outputUnit) {
    double inputValueInMeters = convertToMeters(value, inputUnit);
    output = convertFromMeters(inputValueInMeters, outputUnit);

    setState(() {});
  }

  double convertToMeters(double value, String unit) {
    switch (unit) {
      case 'km':
        return value * 1000;
      case 'hm':
        return value * 100;
      case 'dam':
        return value * 10;
      case 'm':
        return value;
      case 'dm':
        return value / 10;
      case 'cm':
        return value / 100;
      case 'mm':
        return value / 1000;
      default:
        return value;
    }
  }

  double convertFromMeters(double valueInMeters, String unit) {
    switch (unit) {
      case 'km':
        return valueInMeters / 1000;
      case 'hm':
        return valueInMeters / 100;
      case 'dam':
        return valueInMeters / 10;
      case 'm':
        return valueInMeters;
      case 'dm':
        return valueInMeters * 10;
      case 'cm':
        return valueInMeters * 100;
      case 'mm':
        return valueInMeters * 1000;
      default:
        return valueInMeters;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF062AAA),
        title: Text('Length Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Value:'),
                SizedBox(
                  width: 100.0,
                  child: TextField(
                    onChanged: (value) {
                      updateValues(double.tryParse(value) ?? 0.0, selectedInputUnit, selectedOutputUnit);
                    },
                  ),
                ),
                DropdownButton<String>(
                  value: selectedInputUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedInputUnit = newValue!;
                      updateValues(input, selectedInputUnit, selectedOutputUnit);
                    });
                  },
                  items: <String>['km', 'hm', 'dam', 'm', 'dm', 'cm', 'mm']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Output Unit:'),
                DropdownButton<String>(
                  value: selectedOutputUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOutputUnit = newValue!;
                      updateValues(input, selectedInputUnit, selectedOutputUnit);
                    });
                  },
                  items: <String>['km', 'hm', 'dam', 'm', 'dm', 'cm', 'mm']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Text('Result: $output $selectedOutputUnit'),
          ],
        ),
      ),
    );
  }
}
