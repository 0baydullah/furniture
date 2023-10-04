import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details(
      {required this.url, required this.name, required this.price, super.key});
  final String url;
  final String name;
  final int price;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Leather",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    child: Image.asset("asset/cart.png"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0, vertical: 15),
            child: Row(
              children: [
                Text(
                  "Dining Chair",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 305,
              width: 270,
              decoration: new BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.grey.shade300, width: 0.0),
                borderRadius: BorderRadius.circular(39),
              ),
              child: SizedBox(
                height: 305,
                width: 270,
                child: Image.asset(
                  widget.url,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(58),
                  topRight: Radius.circular(58),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 32, 20, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 95,
                          width: 272,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(31)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Material",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Leather Sheet",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                  height: 58,
                                  width: 108,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(31)),
                                  ),
                                  child: Image.asset('asset/copperColor.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 81,
                          width: 81,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(91)),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffF68160),
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          "Choose ",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Color",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 81,
                          width: 83,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            color: Color(0xff0788A4),
                          ),
                        ),
                        Container(
                          height: 81,
                          width: 83,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            color: Color(0xffECB5B6),
                          ),
                        ),
                        Container(
                          height: 81,
                          width: 83,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            color: Color(0xffFDC983),
                          ),
                        ),
                        Container(
                          height: 81,
                          width: 83,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            color: Color(0xff484855),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 82,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          color: Color(0xffffffff),
                        ),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
