import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      //  color: Colors.redAccent,
      //  color: Colors.redAccent,
        child: SvgPicture.asset("asset/chairx.svg",fit: BoxFit.cover,),
      ),
    );
  }
}
