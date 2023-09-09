import 'package:flutter/material.dart';

class FoodDetailTile extends StatelessWidget {
  const FoodDetailTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0), ),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('images/okro_soup.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Food Name', style: TextStyle(fontWeight: FontWeight.w900)),
                    SizedBox(height: 10,),
                    Text('Lorem ipsum dolor sit amet, consecteteur adipiscing elit,',
                      style: TextStyle(color: Colors.grey, fontSize: 10),),
                    Text('sed diam nomummy nibh euismod tincidunt ut lacreet', style: TextStyle(color: Colors.grey, fontSize: 10),),
                    Text('dolore magna alicuam erat volutpat', style: TextStyle(color: Colors.grey, fontSize: 10),),
                    SizedBox(height: 5,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ 300.00', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 90,),
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
                    SizedBox(height: 5),
                  ],
                ),
              )
            ],
          ),
        );


  }
}
