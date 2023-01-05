import 'package:flutter/material.dart';

import '../Widgets/AppBarCart.dart';
import '../Widgets/ItemsCard.dart';

class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [

          AppBarCart(),
          Container(
            height:500 ,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(45)
              )

            ),
            child:Column(
              children: [
                ItemsCard(),
              ],
            ) ,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Price : ',style: TextStyle(fontSize: 20,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                Text('300\$',style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold))
              ],
            ),
            
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.all(35),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,

            ),
            child: MaterialButton(
                onPressed: (){},
            child:Text('Check Out',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)
              )

          ),
      ),
      ]
    )
    );
  }

}