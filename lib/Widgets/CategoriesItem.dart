import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1;i<8;i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             color: Colors.white
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/$i.png',width: 40,height: 40,),
                Text('Sandar')
              ],
            ),
          )
        ],
      ),
    );

  }
}
