
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:[
             Padding(
             padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child:Icon(Icons.arrow_back_ios_new_sharp,),
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
              ]
            ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 260,
                    width: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow:[ 
                        BoxShadow(
                        offset: Offset(4, 4),
                        color: Colors.grey.shade300,
                        spreadRadius: 1,
                        blurRadius: 15
                        ),
                      ]
                    ),
                      // padding: EdgeInsets.all(50),
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        startAngle: 250,
                        endAngle: 250,
                        radiusFactor: 0.8,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.15,
                         thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        annotations: [
                          GaugeAnnotation(
                            angle:180 ,
                            widget: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("18.5",
                                  style: TextStyle(
                                    fontSize: 58,
                                    fontFamily: "Times",
                                    fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: 50,
                            cornerStyle: CornerStyle.bothCurve,
                            enableAnimation: true,
                            animationDuration: 1200,
                            animationType: AnimationType.ease,
                            sizeUnit: GaugeSizeUnit.factor,
                             gradient: SweepGradient(colors: <Color>[
                              Color(0xFF56D0DB),
                              Color(0xFF59C8E3)
                            ], 
                            stops: <double>[
                             0.25,
                             0.75
                           ]
                          ),
                          color: Color(0xFF00A8B5),
                          width: 0.15),
                      ],
                     
                      )
                    ]
                    ),
                     
                     
                  ),
                                
                   SizedBox(height: 50,),
                    Container(
                      child: Text("You have Normal body weight"),
                    ),
                    SizedBox(height: 120,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      child: Text(
                        "Details",
                        style: TextStyle(fontSize: 20),
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
    );
  }
}




