import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_design/Widgets/ItemsCard.dart';

import '../Screen/ItemProduct.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 0.58,
      children: [
        for(int i=1;i<8;i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          padding: EdgeInsets.only(left:15,right: 15 ,top: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('-50% ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  Icon(Icons.favorite,color: Colors.red,)
                ],
              ),
              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemProduct()));
                  },
                  
                  child: Container(
                 margin:EdgeInsets.all(10) ,
        child: Image.asset('images/$i.png'),height: 120,width: 120,)),
              Container(
               alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 8),
                child: Text('Title',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                alignment: Alignment.centerLeft,

                child: Text(' write about description',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('50%',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                    ),),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
              )

            ],
          ),
        )


      ],
    );
  }
}
