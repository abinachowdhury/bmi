// import 'package:flutter/material.dart';
// import 'package:sliding_card/sliding_card.dart';


// class TestScreen extends StatefulWidget {
//   const TestScreen({ Key? key }) : super(key: key);
//   final String title;

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   SlidingCardController controller ;
//   @override
//   void initState() {
    
//     super.initState();
//     controller = SlidingCardController();
//   }
//   @override
//   Widget build(BuildContext context) {
//      SizeConfig().init(context);
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             AppointmentCard(
//               onCardTapped: () {
//                 print('Card tapped controller can be used here ');
//                 if(controller.isCardSeparated == true)
//                 {
//                   controller.collapseCard();
//                 }
//                 else
//                 {
//                   controller.expandCard();
//                 }
//               },
//               slidingCardController: controller,
//             )
//           ],
//         ),
//       ), // Thi
      
//     );
//   }
// }