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
      margin: const EdgeInsets.fromLTRB(15, 410, 15, 0),
      padding: const EdgeInsets.fromLTRB(20, 4, 5, 4),
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
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.white70, size: 35,),
                hintText: "Search Item",
                hintStyle: TextStyle(color: Colors.white38, fontSize: 15, fontWeight: FontWeight.w300),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1C1C25),
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF1C1C25),
                    )
                )
              ),
            ),
          ),
          const Spacer(),
/// trailing icon
          Container(
            height: 71,
            width: 88,
            decoration: const BoxDecoration(
              color: Color(0xFFCDE9D4),
              borderRadius: BorderRadius.all(Radius.circular(21))
            ),
            child: Image.asset(
              'asset/setting.png',
              color: Colors.black,
            )
          )
        ],
      ),
    );
  }
}
