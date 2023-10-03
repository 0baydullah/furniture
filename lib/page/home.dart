import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/widget/homeGridList.dart';
import 'package:furniture/widget/homeSearchBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
               /// color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)
                ),
                image: DecorationImage(
                  image: AssetImage('asset/dinningChair.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),


            /// Text

            Container(
              margin: const EdgeInsets.fromLTRB(40, 40, 0, 0),
              height: 200,
              width: 300,
              //color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find the best",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      color: Colors.black
                    ),
                  ),
                  const Text(
                    "Furniture! 🛋️",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Dinning Chair",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey.shade700
                    ),
                  ),
                ],
              ),
            ),
            /// cart icon
            Container(
              margin: EdgeInsets.fromLTRB(310, 30, 0, 0),
              height: 76,
              width: 72,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                  
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            ),

            /// love icon
            Container(
              margin: EdgeInsets.fromLTRB(310, 280, 0, 0),
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(91)
                ),

              ),
              child: Icon(
                  Icons.favorite_outline_sharp,
                size: 28,
              ),
            ),



            /// Price container
            Container(
              margin: EdgeInsets.fromLTRB(30, 280, 0, 0),
              height: 72,
              width: 115,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                    Radius.circular(50)
                ),

              ),
              child: Center(
                child: Text(
                  "\$289",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ),

            /// Search Bar container call
            HomeSerchBar(),


            /// Home grid list call
            HomeGridList(),

          ],
        ),
      ),
    );
  }
}
