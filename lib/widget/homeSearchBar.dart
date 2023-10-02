import 'package:flutter/material.dart';
class HomeSerchBar extends StatefulWidget {
  const HomeSerchBar({super.key});

  @override
  State<HomeSerchBar> createState() => _HomeSerchBarState();
}

class _HomeSerchBarState extends State<HomeSerchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 420, 15, 0),
      height: 72,
      width: double.infinity,
      decoration: const BoxDecoration(
        //color: Colors.black54,
        color: Color(0xFF1C1C25),
        borderRadius: BorderRadius.all(
            Radius.circular(24)
        ),
      ),
      child: Row(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Search Item"
            ),
          )
        ],
      ),
    );
  }
}
