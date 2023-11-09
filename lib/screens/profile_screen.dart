import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF062AAA),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 14),
            child: Text(
              "My Profile",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'poppinsregular',
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: CircleAvatar(
                radius: 75, // Ukuran CircleAvatar
                backgroundColor: Color(0xFF062AAA),
                child: Image.asset('assets/images/rangga_emoji.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Ranggaagm",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'poppinssemibold',
                color: Color(0xFF062AAA),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(
              "UI/UX Designer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'poppinss',
                color: Colors.black,
              ),
            ),
          ),
           Padding(
              padding: const EdgeInsets.only(top: 45, right: 270),
              child: Text(
                "My email",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ranggaaligufron@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),                
                  filled: true,
                  fillColor: Colors.black,
                ),
              ),
            ),
             
             Padding(
               padding: const EdgeInsets.only(top: 9,right:230.0),
               child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppinsregular',
                    color: Colors.black,     
                  ),
                ),
             ),
            
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "+62 857‑9571‑1876",
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  filled: true,
                  fillColor: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, right: 260),
              child: Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ranggaagm___",
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  filled: true,
                  fillColor: Colors.black,
                ),
              ),
            ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
