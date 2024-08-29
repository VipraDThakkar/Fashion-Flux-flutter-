
import 'package:flutterfashionfluxapp/loginscreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(child:
    Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight*0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth*0.05,
              ),
              Container(child:
              Text(
                  "Back to Work \nCollection 2023-24",style: TextStyle(fontSize: screenWidth*0.09,fontWeight: FontWeight.bold)
              ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight*0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth*0.05,
              ),
              Container(child:
              Text(
                  "Confidence Meets Elegance, \nthe Perfect Balance",style: TextStyle(fontSize: screenWidth*0.06,fontWeight: FontWeight.bold)
              ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight*0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth*0.05,
              ),
              ElevatedButton(
                child: Text("Get Started",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle:
                    (const TextStyle(fontSize: 19,color: Colors.white))),
                onPressed:() {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Loginscreen()));
                },
              )
            ],
          ),

        ],
      ),
    ));
  }
}
