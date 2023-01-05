import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            for(int i=1;i<5;i++)
            Container(

              height: 110,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white


              ),

              child: Row(
                children: [
                  Radio(
                      value: "",
                      groupValue: "",
                      activeColor: Colors.deepOrange,
                      onChanged: (index){}
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset('images/$i.png',width: 70,height: 70,),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title Product',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
                        ),
                        Text(
                          '\$55',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),

                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.delete,color: Colors.deepOrange,),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        blurRadius: 10,
                                        spreadRadius: 1

                                    )
                                  ]
                              ),
                              child: Icon(Icons.plus_one,)
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text('1',style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange
                            ),),
                          ),
                          Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        blurRadius: 10,
                                        spreadRadius: 1

                                    )
                                  ]
                              ),
                              child: Icon(Icons.exposure_minus_1)),

                        ],
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
