import 'package:flutter/material.dart';
import 'package:project_pemmob/screens/Dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

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
              padding: const EdgeInsets.only(top: 50),
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
              padding: const EdgeInsets.only(right: 257, top: 45),
              child: Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 257, top: 15),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: SizedBox(
                height: 55,
                width: 350,
                child: Material(
                  color: Color(0xFF062AAA),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Dashboard(),
                         ));
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
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                "Don't have an account? Sign up",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
