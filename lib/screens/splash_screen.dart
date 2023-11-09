import 'package:flutter/material.dart';
import 'package:project_pemmob/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: SizedBox(
                height: 200,
                width: 250,
                child: Image.asset('assets/images/logosc.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Text(
                "Second Culture",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Antique but Eccentric",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 55,
                width: 350,
                child: Material(
                  color: Color(0xFF062AAA),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Login",
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
            ),
          ],
        ),
      ),
    );
  }
}
