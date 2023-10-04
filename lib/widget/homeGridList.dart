import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture/page/details.dart';

class HomeGridList extends StatefulWidget {
  const HomeGridList({super.key});

  @override
  State<HomeGridList> createState() => _HomeGridListState();
}

class GridBox{
  final String image;
  final String name;
  final int price;
  final String color;


  const GridBox({
    required this.image,
    required this.name,
    required this.price,
    required this.color
  });
}

List<GridBox> gridItem = [

  const GridBox(
      image: 'asset/chair2.jpg',
      name: "Blue Chair",
      price: 130,
      color: "0xFFCDE9D4",
  ),
  const GridBox(
    image: 'asset/chair5.jpg',
    name: "Purpel Chair",
    price: 120,
    color: "0xFFEDEDED",
  ),
  const GridBox(
    image: "asset/chair4.jpg",
    name: "Green Chair",
    price: 100,
    color: '0xFFEDEDED',
  ),
  const GridBox(
    image: 'asset/chair2.jpg',
    name: "skd",
    price: 100,
    color: '0xFF9B99F5',
  ),
  const GridBox(
    image: 'asset/chair2.jpg',
    name: "Blue Chair",
    price: 130,
    color: "0xFFCDE9D4",
  ),
  const GridBox(
    image: 'asset/chair5.jpg',
    name: "Purpel Chair",
    price: 120,
    color: "0xFFEDEDED",
  ),
  const GridBox(
    image: "asset/chair4.jpg",
    name: "Green Chair",
    price: 100,
    color: '0xFFEDEDED',
  ),
  const GridBox(
    image: 'asset/chair2.jpg',
    name: "skd",
    price: 100,
    color: '0xFF9B99F5',
  ),
  const GridBox(
    image: 'asset/chair2.jpg',
    name: "Blue Chair",
    price: 130,
    color: "0xFFCDE9D4",
  ),

];


class _HomeGridListState extends State<HomeGridList> {

  final List<Color> gridItemColors = [
    Color(0xFFCDE9D4),
    Color(0xFFEDEDED),
    Color(0xFFEDEDED),
    Color(0xFF9B99F5),
    Color(0xFFCDE9D4),
    Color(0xFFEDEDED),
    Color(0xFFCDE9D4),
    Color(0xFF9B99F5),
    Color(0xFFEDEDED),

  ];
  List<StaggeredTile>  widthHeight = <StaggeredTile> [
    StaggeredTile.count(1, 1.1),
    StaggeredTile.count(1, 1.3),
    StaggeredTile.count(1, 1.1),
    StaggeredTile.count(1, 1.1),
    StaggeredTile.count(1, 1.3),
    StaggeredTile.count(1, 1.1),
    StaggeredTile.count(1, 1.3),
    StaggeredTile.count(1, 1.1),
    StaggeredTile.count(1, 1.1),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 415+75, 15, 0),
      height: double.infinity,
      width: double.infinity,

     // color: Colors.grey,
      child:  StaggeredGridView.countBuilder(
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        crossAxisCount: 2, // Number of columns
        itemCount: gridItem.length,     // Total number of items
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Details(
                  url: gridItem[index].image, name: gridItem[index].name, price: gridItem[index].price)));
            },
            child: Container(
              decoration: BoxDecoration(
                color: gridItemColors[index],
                borderRadius: BorderRadius.all(
                    Radius.circular(51)
                )
              ),
              child: Stack(
                children: [
                  /// icon
                  Container(
                    margin: EdgeInsets.fromLTRB(125, 15, 0, 0),
                    height: 48, width: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(
                      Icons.favorite_outline_sharp
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(40, 15, 40, 15),
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      children: [
                        /// image
                        SizedBox(
                          height: 110,
                          width: 80,
                          child: Image.asset(
                            gridItem[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Spacer(),
                        /// name
                        Text(
                          gridItem[index].name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        /// price
                        Text(
                          "\$${gridItem[index].price}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          return widthHeight[index];
        },
      ),
    );
  }
}

/*Tile({required int index}) {
}*/
