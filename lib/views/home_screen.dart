import 'package:flutter/material.dart';
import 'package:restaurantzy/widgets/reusable_button.dart';
import 'package:restaurantzy/views/menu_screen.dart';
import 'package:restaurantzy/views/food_search.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(top: 18.0, bottom: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Column(
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration:const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('images/foodbank_icon.png'),

                          ),
                      ),
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                  ),
                  Text('Food Bank', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),),
                  Text('Special & Delicious Food', style: TextStyle(color: Colors.grey), )
                ],
              ),
              Column(
                children: [
                  ReusableButton(title: 'Log In' , color: Colors.red, fontColor: Colors.white,
                    onPress: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return MenuScreen();
                  })),),
                  ReusableButton(title: 'Sign Up', color: Colors.white, fontColor: Colors.black,
                    onPress: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return FoodSearch();
                  })),),
                ],
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('15%', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),),
                            Text('Discount', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                            Text('From Our Store', style: TextStyle(fontSize: 15, color: Colors.white54,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            // border: Border(left: BorderSide(width: 50.0, color: Colors.white, style: BorderStyle.solid)),
                            image: DecorationImage(
                              image: AssetImage('images/Jellof_rice.jpg'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(90,90)
                            )
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              )
            ]
          ),
        )

      ),
    );
  }
}


