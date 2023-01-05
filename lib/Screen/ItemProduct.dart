import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemProduct extends StatelessWidget {
  List<Color> colors=[
    Colors.red,
    Colors.white,
    Colors.black,
    Colors.yellow,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text('Product',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/1.png'),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEX,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:50,bottom: 20),
                          child: Row(
                            children: [
                              Text('Title Product')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                  itemBuilder: (context,i)=>Icon(Icons.favorite,color: Colors.deepOrange,),
                                  onRatingUpdate: (index){},
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 5),
                                initialRating: 1,
                                itemSize: 25,
                                direction: Axis.horizontal,
                                minRating: 1,
                                maxRating: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          color: Colors.grey.withOpacity(0.8)
                                        )
                                      ]

                                    ),
                                      child: Icon(Icons.plus_one)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      '2',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                spreadRadius: 1,
                                                color: Colors.grey.withOpacity(0.8)
                                            )
                                          ]

                                      ),
                                      child: Icon(Icons.exposure_minus_1)
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:10 ),
                          child: Text(
                              'Description Proudct Very Good have a lot of in Details and have alot of beautiful',
                            style: TextStyle(fontSize: 17,color:Colors.blueAccent ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text('Size : ',style:TextStyle(fontSize: 20)),
                              Row(
                               // mainAxisAlignment: MainAxisAlignment.spaceBetween

                                children: [
                                  for(int i=0;i<5;i+=1)
                                  Container(

                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    alignment: AlignmentDirectional.center,
                                    width:30,
                                    height:30,
                                    decoration: BoxDecoration(
                                      color:  Colors.white,

                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          color: Colors.grey.withOpacity(0.6)
                                        )
                                      ]
                                    ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text('$i',style: TextStyle(fontSize: 20),),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text('Color : ',style:TextStyle(fontSize: 20)),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween

                                children: [
                                  for(int i=0;i<5;i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: colors[i],
                                          borderRadius: BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                spreadRadius: 1,
                                                color: Colors.grey.withOpacity(0.6)
                                            )
                                          ]
                                      ),

                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$120',style: TextStyle(fontSize: 25),),
                              ElevatedButton(
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.add_shopping_cart_outlined,color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text('Add To Cart',style: TextStyle(fontSize: 16,color: Colors.white),)
                                    ],
                                  ))
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )

            )
          ],
        ),
      ),
    );
  }
}
