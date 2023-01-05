import 'package:flutter/material.dart';
import 'package:shopping_app_design/Widgets/AppBarWidget.dart';
import 'package:shopping_app_design/Widgets/Product.dart';

import '../Widgets/CategoriesItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          AppBarItem(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                   topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                   margin: EdgeInsets.symmetric(horizontal: 15),
                   height: 50,
                   decoration: BoxDecoration(
                       color: Colors.white,
                     borderRadius: BorderRadius.circular(30)

                   ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:5),

                        height: 50,
                        width: size.width*0.5,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt,size: 27,color: Colors.blueAccent,)
                    ]
                  ),
                 ),
                Container(
                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Category(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Best Beller',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Product(),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
