import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../Screen/CartScreen.dart';

class AppBarItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.store,color: Colors.indigo,)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Shop App',
            style: TextStyle
              (
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            badgeContent: Text('3'),
            padding: EdgeInsets.all(4),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
              },
                child: Icon(Icons.add_shopping_cart_outlined)),
          ),

        ],
      )
    );
  }
}
