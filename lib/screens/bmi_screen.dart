import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFF062AAA),
    ),
    home: BmiScreen(),
  ));
}

class BmiScreen extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BmiScreen> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController ageController = TextEditingController(); // Add age controller

  double bmi = 0.0;

  void calculateBMI() {
    double height = double.tryParse(heightController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;
    int age = int.tryParse(ageController.text) ?? 0; // Parse age

    if (height > 0 && weight > 0 && age > 0) {
      // Formula for BMI: weight (kg) / (height (m) * height (m))
      double heightInMeters = height / 100.0;
      setState(() {
        bmi = weight / (heightInMeters * heightInMeters);
      });
      _showResultDialog(age);
    }
  }

  void _showResultDialog(int age) {
    String category;
    if (bmi < 18.5) {
      category = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      category = 'Normal Weight';
    } else if (bmi >= 24.9 && bmi < 29.9) {
      category = 'Overweight';
    } else {
      category = 'Obesity';
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Your BMI Result'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Your BMI is: ${bmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Category: $category',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Age: $age', // Display age in the dialog
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF062AAA),
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Icon(
              Icons.accessibility,
              size: 120,
              color: Color(0xFF062AAA),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter your height (cm)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter your weight (kg)',
                  border: OutlineInputBorder(),
                ),
            ),
            ),
            SizedBox(height: 20,),
            Container( 
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF062AAA),
              ),
              child: Text(
                'Calculate BMI',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ), 
          ],
      ),
      ),
    );
  }
}
