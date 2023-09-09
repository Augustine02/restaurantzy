import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0), ),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('images/fried_rice.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height:10),
                Text('Food Name', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold ), ),
                Text('\$ 300.00', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),),
                TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0)),
                backgroundColor: MaterialStatePropertyAll(Colors.red),
                shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                // padding: MaterialStateProperty.all(EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5))
                ),
                onPressed: (){},
                child: Text('Add Cart', style:TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),))

              ],
            ),
          ),

      ),
    );
  }
}
