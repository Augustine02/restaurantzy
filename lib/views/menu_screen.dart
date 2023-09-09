import 'package:flutter/material.dart';
import 'package:restaurantzy/widgets/food_tile.dart';

class MenuScreen extends StatefulWidget {

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/egusi_soup.jpeg'),
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0), ),
                color: Colors.grey,
              ),
              child:
              Container(
                padding: EdgeInsets.all(35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back,size: 30,),
                        Icon(Icons.list, size: 30)
                      ],
                    ),
                    Column(
                      children: [
                        Text('Different', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900)),
                        Text('Kind of Food', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Food Category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Container(
                        width: 190,
                        height: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FoodTile(),
                      FoodTile(),
                      FoodTile()
                    ]
                  ),
                  SizedBox(height: 50,),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Food Category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Container(
                        width: 190,
                        height: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FoodTile(),
                        FoodTile(),
                        FoodTile()
                      ]
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
