import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


//import 'package:sliding_card/sliding_card.dart';
class CalculatorScreen extends StatefulWidget {
 const CalculatorScreen({ Key? key }) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final double _min = 0;

final double _max = 100;

SfRangeValues _values = const SfRangeValues(40.0, 60.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                    child:Icon(Icons.grid_view_rounded,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(4,4),
                            blurRadius:15 ,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius:15 ,
                            spreadRadius: 1,
                          ),
                        ]
                    ),
                    ),
                    Container(
                    child: Text("BMI Results"),
                  ),
                   Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.person_outline),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(4,4),
                            blurRadius:15 ,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius:15 ,
                            spreadRadius: 1,
                          ),   
                        ]
                      ),
                    ),
        
                  ],
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                          child: Text(
                            "Male",
                            style: TextStyle(fontSize: 20,color: Colors.black26),
                          ),
                          decoration: BoxDecoration(
                            
                                  borderRadius: BorderRadius.circular(15),
                                  //shape: BoxShape.circle,
                                  color: Colors.lightBlueAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(4, 4),
                                      blurRadius:15 ,
                                      spreadRadius: 1,
                                    ),
                                    
                                  ]
                               ),
                        ), 
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                          child: Text(
                            "Female",
                            style: TextStyle(fontSize: 20,color: Colors.black26),
                          ),
                          decoration: BoxDecoration(
                            
                                  borderRadius: BorderRadius.circular(15),
                                  //shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(4, 4),
                                      blurRadius:15 ,
                                      spreadRadius: 1,
                                    ),
                                    
                                  ]
                               ),
                        ), 
                  ],
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 60),
                             child: SfRangeSlider.vertical(
                                min: _min,
                                max: _max,
                                values: _values,
                                interval: 10,
                                showTicks: true,
                                showLabels: true,
                               // numberFormat: NumberFormat("\$"),
                                onChanged: (SfRangeValues value) {
                                  setState(() {
                                    _values = value;
                                  });
                                },
                              ),
                              
                            decoration: BoxDecoration(
                              
                                    borderRadius: BorderRadius.circular(15),
                                    //shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(4, 4),
                                        blurRadius:15 ,
                                        spreadRadius: 1,
                                      ),
                                      
                                    ]
                                 ),
                          ), 
                          Column(
                            children: [
                              Container(
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                            child: Column(
                              children: [
                                Text(
                                "Weight",
                                style: TextStyle(fontSize: 20,color: Colors.black26),
                                ),
                                SizedBox(height: 10,),
                                Text("70",style: TextStyle(fontSize: 50,color: Colors.black45),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(5),
                                          child:Icon(Icons.add,),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  offset: Offset(4,4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(-4, -4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                              ]
                                          ),
                                      ),
                                      SizedBox(width: 50,),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                          child:Icon(Icons.remove),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  offset: Offset(4,4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(-4, -4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                              ]
                                          ),
                                      ),
                                  ],
                                )
        
          
                              ],
                            ),
                              
                            decoration: BoxDecoration(
                              
                                    borderRadius: BorderRadius.circular(15),
                                    //shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(4, 4),
                                        blurRadius:15 ,
                                        spreadRadius: 1,
                                      ),
                                      
                                    ]
                                 ),
                          ),
                          SizedBox(height:20,), 
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                            // ignore: prefer_const_constructors
                            child:Column(
                              children:[ 
                                Text(
                                "Age",
                                style: TextStyle(fontSize: 20,color: Colors.black26),
                                ),
                                SizedBox(height: 10,),
                                Text("25",style: TextStyle(fontSize: 50,color: Colors.black45),
                                ),
                                Row(
                                
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                       // padding: EdgeInsets.all(5),
                                          child:Icon(Icons.add,),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  offset: Offset(4,4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(-4, -4),
                                                  blurRadius:15 ,
                                                  spreadRadius: 1,
                                                ),
                                              ]
                                          ),
                                      ),
                                      SizedBox(width: 70,),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                      child:Icon(Icons.remove),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              offset: Offset(4,4),
                                              blurRadius:15 ,
                                              spreadRadius: 1,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-4, -4),
                                              blurRadius:15 ,
                                              spreadRadius: 1,
                                            ),
                                          ]
                                      ),
                                      ),
                                    ],
                                  ),
                              ]
        
                            ),
                            
                            decoration: BoxDecoration(
                              
                                    borderRadius: BorderRadius.circular(15),
                                    //shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(4, 4),
                                        blurRadius:15 ,
                                        spreadRadius: 1,
                                      ),
                                      
                                    ]
                                 ),
                          ), 
        
                            ],
                          ),
                  ],
                ),
              ),
              SizedBox(height:20,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 180,vertical: 10),
                            child: Text(
                              "Let's Begin",
                              style: TextStyle(fontSize: 20),
                            ),
                            decoration: BoxDecoration(
                              
                                    borderRadius: BorderRadius.circular(15),
                                    //shape: BoxShape.circle,
                                    color: Colors.lightBlueAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(4, 4),
                                        blurRadius:15 ,
                                        spreadRadius: 1,
                                      ),
                                      
                                    ]
                                 ),
                          ),
              ), 
            ],
          ),
        ),
        
      ),
    );
  }
}