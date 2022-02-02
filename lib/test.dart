import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.grey,
        //  appBar:AppBar(
        //    leading:CircleAvatar(
        //   radius: 50,
        //   backgroundColor: Colors.amber,
        //   child: IconButton(
        //       color: Colors.black,
        //       //padding: EdgeInsets.all(20),
        //       iconSize: 30,
        //       icon: Icon(Icons.arrow_back_ios_new),
        //       onPressed: () {
        //       // do something
        //       }),
        // ),

       
        //    title: Text("rerethg"),
        //    actions: [
        //      CircleAvatar(
        //   radius: 50,
        //  // backgroundColor: Colors.amber,
        //   child: IconButton(
        //       color: Colors.black,
        //       //padding: EdgeInsets.all(20),
        //       iconSize: 30,
        //       icon: Icon(Icons.people_alt_rounded),
        //       onPressed: () {
        //       // do something
        //       }),
        // ),

        //    ],
        //  ),
        

        body:
         Container(
           height: 300,
           width: 300,
           color: Colors.white,
           decoration: BoxDecoration(
             border: Border.all(color: Colors.white10,),
             borderRadius: BorderRadius.circular(10.0)
           ),
           
         ),
        
        
      
      ),
    );
  }
}