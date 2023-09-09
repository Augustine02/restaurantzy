import 'package:flutter/material.dart';
import 'package:restaurantzy/widgets/foodDetail_tile.dart';

class FoodSearch extends StatelessWidget {
  const FoodSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,size: 30,),
                    Icon(Icons.list, size: 30)
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                          suffixIcon: Icon(Icons.search, color: Colors.black,),
                          hintText: 'Search From Here',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )

                        )
                      ),
                    ),
                    SizedBox(width: 50),
                    Icon(Icons.line_weight_outlined, size: 30)
                  ],
                ),
                SizedBox(height: 33),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FoodDetailTile(),
                      Container(width: 30, height: 3, color: Colors.white24,),
                      SizedBox(height: 10),
                      FoodDetailTile(),
                      Container(width: 30, height: 3, color: Colors.white24,),
                      SizedBox(height: 10),
                      FoodDetailTile(),
                      Container(width: 30, height: 3, color: Colors.white24,),
                      SizedBox(height: 10),
                      FoodDetailTile(),
                      Container(width: 30, height: 3, color: Colors.white24,),
                      SizedBox(height: 10),
                      FoodDetailTile(),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        )
      ),
    );
  }
}
