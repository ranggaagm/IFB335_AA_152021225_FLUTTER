import 'package:flutter/material.dart';
import 'package:project_pemmob/screens/bmi_screen.dart';
import 'package:project_pemmob/screens/calculator_screen.dart';
import 'package:project_pemmob/screens/konversimatauang_screen.dart';
import 'package:project_pemmob/screens/konversisuhu_screen.dart';
import 'package:project_pemmob/screens/lenght_screen.dart';
import 'package:project_pemmob/screens/notes_screen.dart';
import 'package:project_pemmob/screens/profile_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFF062AAA),
        actions: [
          IconButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Profile(),
      ),
    );
  },
  icon: Icon(Icons.account_circle),
),


        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 80),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => CalculatorApp(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "Calculator",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20, // Spacer
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,right: 40),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => BmiScreen(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "BMI",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 80),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                    onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => KonversiMataUang(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "Currency Convertion",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20, // Spacer
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,right: 40),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                    onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => KonversiSuhu(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "Temperature Convertion",
                          textAlign: TextAlign.center, 
                          style: TextStyle( 
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 80),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                    onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) =>LengthConverter(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "Lenght Convertion",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20, // Spacer
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,right: 40),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Material(
                    color: Color(0xFF062AAA),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                    onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => NotesPage(),
                         ));
                     },
                      child: Center(
                        child: Text(
                          "Notes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
