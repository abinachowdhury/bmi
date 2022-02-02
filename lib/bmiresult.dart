

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        
        body: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.all(15),
            child: Container(
              
              color: Colors.white,
             
              child: Column(
                
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                         Container(
                           padding: EdgeInsets.all(5),
                          child: Icon(Icons.arrow_back_ios_new_sharp,),
                        
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: Offset(4, 4),
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
                            //color: Colors.grey.shade600,
                            offset: Offset(-1, -1),
                            blurRadius:15 ,
                            spreadRadius: 1,
                          ),
                          
                        ]
                      ),
                      
                    ),
                      ]
                    ),
                    
                  ),
                  SizedBox(height: 80,),
                   Center(
                    child: 
                      Expanded(
                        child: Container(
                         
                         // padding: EdgeInsets.all(50),
                          child:
                           SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        startAngle: 160,
                        endAngle: 160,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.05,
                          color: const Color.fromARGB(100, 0, 169, 181),
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 50,
                              width: 0.1,
                              sizeUnit: GaugeSizeUnit.factor,
                              cornerStyle: CornerStyle.startCurve,
                              gradient: const SweepGradient(colors: <Color>[
                                Color(0xFF00a9b5),
                                Color(0xFFa4edeb)
                              ], stops: <double>[
                                0.25,
                                0.75
                              ])),
                          MarkerPointer(
                            value:30,
                            markerType: MarkerType.circle,
                            color: const Color(0xFF87e8e8),
                            
                          )
                          
                        ],
                        
                                          )
                                          ]),
                        
                      
                        ),
                      ),
                   ),
                              
                      SizedBox(height: 50,),
                      Container(
                    child: Text("You have Normal body weight"),
                  ),
                  SizedBox(height: 80,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Text("Details",style: TextStyle(fontSize: 20),),
                    decoration: BoxDecoration(
                      
                            borderRadius: BorderRadius.circular(15),
                            //shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
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
          ),
        ),
        
      ),
    );
  }
}




