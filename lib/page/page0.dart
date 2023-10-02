import 'package:flutter/material.dart';
import 'home.dart';

class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/bg.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 49.0,
            bottom: 25,
          ),
          child: Column(
            children: [
              Text(
                "We design \nFurniture for \nYour comfort",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  height: 99,
                  width: 363,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
