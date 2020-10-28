//          // _buildButton()
//               // Text('stst'),
//               // Text('stst'),
//               // Container(
//               //   height: 50.0,
//               //   width: 50.0,
//               //   color: kPrimaryColor,
//               //   child: Center(child: Text('ststst')),


//                 // Widget _buildButton() {
//   //   return GestureDetector(
//   //     onTap: () {},
//   //     child: Container(
//   //       height: 40.0,
//   //       // decoration: BoxDecoration(borderRadius:BorderRadius.circular(5.0)

//   //       // ),
//   //       color: Colors.blueAccent,
//   //       child: Text(
//   //         'एक बार इस्तेमाल किये जाने वाला पासवर्ड',
//   //         style: TextStyle(color: Colors.green,fontSize: 20.0),
//   //         ),
//   //         ),

//   //   );
//   // }
//     // style: Theme.of(context).textTheme.headline4,





// // // import 'package:flutter/material.dart';
// // // class SelectYourlanguage extends StatelessWidget{
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Container()
// // //     );
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter/animation.dart';
 
// // void main() => runApp(MyApp());
 
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         home: Scaffold(
// //             body: SafeArea(
// //                 child: Center(
// //                     child: Column(
// //                       children: [
// //                         BlinkingTextAnimation(),
// //                         ]
// //                       )
// //                     )
// //                   )
// //                 )
// //               );
// //             }
// // }
 
// // class BlinkingTextAnimation extends StatefulWidget {
// //   @override
// //   _BlinkingAnimationState createState() => _BlinkingAnimationState();
// // }
 
// // class _BlinkingAnimationState extends State<BlinkingTextAnimation>
// //     with SingleTickerProviderStateMixin {
// //   Animation<Color> animation;
// //   AnimationController controller;
 
// //   initState() {
// //     super.initState();
 
// //     controller = AnimationController(
// //         duration: const Duration(milliseconds: 500), vsync: this);
 
// //     final CurvedAnimation curve =
// //         CurvedAnimation(parent: controller, curve: Curves.ease);
 
// //     animation =
// //         ColorTween(begin: Colors.white, end: Colors.red).animate(curve);
 
// //     animation.addStatusListener((status) {
// //       if (status == AnimationStatus.completed) {
// //         controller.reverse();
// //       } else if (status == AnimationStatus.dismissed) {
// //         controller.forward();
// //       }
// //       setState(() {});
// //     });
 
// //     controller.forward();
// //   }
 
// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //         animation: animation,
// //         builder: (BuildContext context, Widget child) {
// //           return new Container(
// //             child: Text('Blinking Text Animation',
// //                 style: TextStyle(color: animation.value, fontSize: 27)),
// //           );
// //         });
// //   }
 
// //   dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }
// // }





// bt


// Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 10.5),
//           child: Icon(
//             Icons.article,
//             color: Colors.white,
//           ),
//         ),
//         // Padding(
//           // padding: const EdgeInsets.all(8.0),
//           // child: Text('+91 ', style: TextStyle(fontSize: 30.0)),
//         // ),
//         Expanded(
//           flex: 1,
//           child: TextFormField(
//             // maxLength: 10,
//             keyboardType: TextInputType.name,
//             autocorrect: false,
//             decoration: InputDecoration(
//               hintText: 'कृप्या अपना  दर्ज करें',
//             ),
//           ),
//         ),
//       ],
//     );