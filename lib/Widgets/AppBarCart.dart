import 'package:flutter/material.dart';

class AppBarCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
            color: Colors.deepOrange,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
            'Cart',
            style: TextStyle(
             color: Colors.blue,
             fontSize: 20,
              fontWeight: FontWeight.bold
              ),
            ),
          ),
         Spacer(),
         Icon(
        Icons.more_horiz
         )
        ],
      ),
    ),
    );
  }
}
