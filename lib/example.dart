import 'package:flutter/material.dart';

// void main() => runApp(MyApp());


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double myPadding = 5;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Animated Padding"),
//           ),
//           body: Column(
//             children: <Widget>[
//               Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: <Widget>[
//                     Flexible(
//                       flex: 1,
//                       child: AnimatedPadding(
//                         duration: Duration(seconds: 1),
//                         padding: EdgeInsets.all(myPadding),
//                         child: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               myPadding = 20;
//                             });
//                           },
//                           child: Container(
//                             color: Colors.red,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: AnimatedPadding(
//                         duration: Duration(seconds: 1),
//                         padding: EdgeInsets.all(myPadding),
//                         child: Container(
//                           color: Colors.green,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: <Widget>[
//                     Flexible(
//                       flex: 1,
//                       child: AnimatedPadding(
//                         duration: Duration(seconds: 1),
//                         padding: EdgeInsets.all(myPadding),
//                         child: Container(
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: AnimatedPadding(
//                         duration: Duration(seconds: 1),
//                         padding: EdgeInsets.all(myPadding),
//                         child: Container(
//                           color: Colors.yellow,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }



// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isOn = false;
//   Widget myWidget = Container(
//     width: 200,
//     height: 100,
//     decoration: BoxDecoration(
//         color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Animated Switcher"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               AnimatedSwitcher(
//                 child: myWidget,
//                 duration: Duration(seconds: 1),
//                 transitionBuilder: (child, animation) => RotationTransition(
//                   turns: animation,
//                   child: child,
//                 ),
//               ),
//               Switch(
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//                 inactiveTrackColor: Colors.red[200],
//                 value: isOn,
//                 onChanged: (newValue) {
//                   isOn = newValue;
//                   setState(() {
//                     if (isOn)
//                       // myWidget = SizedBox(
//                       //   width: 200,
//                       //   height: 100,
//                       //   child: Center(
//                       //     child: Text("Switch: ON",
//                       //         style: TextStyle(
//                       //             color: Colors.green,
//                       //             fontWeight: FontWeight.w700,
//                       //             fontSize: 20)),
//                       //   ),
//                       // );
//                       myWidget = Container(
//                         key: ValueKey(1),
//                         width: 200,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             color: Colors.green,
//                             border: Border.all(color: Colors.black, width: 3)),
//                       );
//                     else
//                       myWidget = Container(
//                         key: ValueKey(2),
//                         width: 200,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             color: Colors.red,
//                             border: Border.all(color: Colors.black, width: 3)),
//                       );
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PostResult postResult = null;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Api demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text((postResult != null) ? postResult.name : "No data"),
//               RaisedButton(
//                 onPressed: () {
//                   PostResult.connectToAPI("Edim", "developer").then((val) {
//                     postResult = val;
//                     setState(() {});
//                   });
//                 },
//                 child: Text("POST"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TabBar headTabbar = TabBar(
//       indicator: BoxDecoration(
//         color: Colors.red,
//         border: Border(
//           bottom: BorderSide(
//             color: Colors.purple,
//             width: 5
//           ),
//         ),
//       ),
//       tabs: <Widget>[
//         Tab(
//           icon: Icon(Icons.comment),
//           text: "Comments",
//         ),
//         Tab(
//           icon: Icon(Icons.launch),
//           text: "Launch",
//         ),
//       ],
//     );

//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: DefaultTabController(
//           length: 2,
//           child: Scaffold(
//             appBar: AppBar(
//               title: Text("Tabbar"),
//               bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(headTabbar.preferredSize.height),
//                 child: Container(
//                   color: Colors.amber,
//                   child: headTabbar,
//                 ),
//               ),
//             ),
//             body: TabBarView(
//               children: <Widget>[
//                 Center(
//                   child: Text("Tab 1"),
//                 ),
//                 Center(
//                   child: Text("Tab 2"),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }




// custom appbar
//  appBar: PreferredSize(
// preferredSize: Size.fromHeight(200),
// child: AppBar(
//   backgroundColor: Colors.amber,
//   // title: Text("Tabbar Custom Height"),
//   flexibleSpace: Positioned(
//     bottom: 0,
//     right: 0,
//     child: Container(
//       margin: EdgeInsets.all(20),
//       child: Text(
//         "Tabbar Custom Height",
//         style: TextStyle(
//           fontSize: 20,
//           color: Colors.white,
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//     ),
//   ),
// ),

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Custom Clipper"),
//           ),
//           body: Center(
//             child: ClipPath(
//               clipper: MyClipper(),
//               child: Image(
//                 width: 300,
//                 image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
//               ),
//             ),
//           )),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
//     path.lineTo(size.width, 0);
//     // path.cubicTo(x1, y1, x2, y2, x3, y3)
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }


// Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: <Widget>[
//       Text(
//         "COntoh 01",
//         style: TextStyle(
//           fontSize: 20,
//         ),
//       ),
//       Text(
//         "COntoh 02 (Small Caps)",
//         style: TextStyle(
//           fontSize: 20,
//           fontFeatures: [
//             prefix0.FontFeature.enable('smcp')
//           ]
//         ),
//       ),
//       Text(
//         "COntoh 1/2 (Small Caps & Frac)",
//         style: TextStyle(
//           fontSize: 20,
//           fontFeatures: [
//             prefix0.FontFeature.enable('smcp'),
//             prefix0.FontFeature.enable('frac')
//           ]
//         ),
//       ),
//       Text(
//         "COntoh 04 (Monsreat)",
//         style: TextStyle(
//           fontSize: 20,
//           fontFamily: 'Monstreat',
//           fontFeatures: [
//             prefix0.FontFeature.enable('smcp')
//           ]
//         ),
//       ),
//     ],
//   ),
// )

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   double getSmallDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 2 / 3;
//   double getBigDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 7 / 8;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFEEEEEE),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             right: -getSmallDiameter(context) / 3,
//             top: -getSmallDiameter(context) / 3,
//             child: Container(
//               width: getSmallDiameter(context),
//               height: getSmallDiameter(context),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                       colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter)),
//             ),
//           ),
//           Positioned(
//             left: -getBigDiameter(context) / 4,
//             top: -getBigDiameter(context) / 4,
//             child: Container(
//               child: Center(
//                 child: Text(
//                   "dribble",
//                   style: TextStyle(fontSize: 30, color: Colors.white),
//                 ),
//               ),
//               width: getBigDiameter(context),
//               height: getBigDiameter(context),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                       colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter)),
//             ),
//           ),
//           Positioned(
//             right: -getBigDiameter(context) / 2,
//             bottom: -getBigDiameter(context) / 2,
//             child: Container(
//               width: getBigDiameter(context),
//               height: getBigDiameter(context),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(
//                         color: Colors.grey,
//                       ),
//                       borderRadius: BorderRadius.circular(5)),
//                   margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
//                   padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
//                   child: Column(
//                     children: <Widget>[
//                       TextField(
//                         decoration: InputDecoration(
//                             icon: Icon(
//                               Icons.email,
//                               color: Color(0xFFFF4891),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Color(0xFFFF4891),
//                               ),
//                             ),
//                             labelText: "Email:",
//                             labelStyle: TextStyle(color: Color(0xFFFF4891))),
//                       ),
//                       TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             icon: Icon(
//                               Icons.vpn_key,
//                               color: Color(0xFFFF4891),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Color(0xFFFF4891),
//                               ),
//                             ),
//                             labelText: "Password:",
//                             labelStyle: TextStyle(color: Color(0xFFFF4891))),
//                       )
//                     ],
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
//                     child: Text(
//                       "FORGOT PASSWORD?",
//                       style: TextStyle(color: Color(0xFFFF4891)),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       SizedBox(

//                         width: MediaQuery.of(context).size.width * 0.5,
//                         height: 40,
//                         child: Container(
//                           child: Material(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.transparent,
//                             child: InkWell(
//                               borderRadius: BorderRadius.circular(20),
//                               splashColor: Colors.amber,
//                               onTap: () {},
//                               child: Center(
//                                 child: Text("Sign",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 16)),
//                               ),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                                 colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter),
//                           ),
//                         ),
//                       ),
//                       FloatingActionButton(
//                         onPressed: () {},
//                         mini: true,
//                         elevation: 0,
//                         child: Text("FB"),
//                       ),
//                        FloatingActionButton(
//                         onPressed: () {},
//                         mini: true,
//                         elevation: 0,
//                         child: Text("TW"),
//                       )
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Dont have an Account?",
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontWeight: FontWeight.w500
//                       ),
//                     ),
//                      Text(
//                       "SINP UP",
//                       style: TextStyle(
//                         color: Colors.amber,
//                         fontWeight: FontWeight.w700
//                       ),
//                     ),
//                 ],)
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Custom Card Latar Corak",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Color(0xFF8C062F),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//           ),
//           Center(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width * 0.8,
//               height: MediaQuery.of(context).size.height * 0.7,
//               child: Card(
//                 elevation: 10,
//                 child: Stack(
//                   children: <Widget>[
//                     Opacity(
//                       opacity: 0.7,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             image: DecorationImage(
//                                 image: NetworkImage(
//                                     "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
//                                 fit: BoxFit.cover)),
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.35,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(4),
//                               topRight: Radius.circular(4)),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
//                               fit: BoxFit.cover)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(
//                           20,
//                           50 + MediaQuery.of(context).size.height * 0.35,
//                           20,
//                           20),
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               child: Text(
//                                 "Beutifull Sunset at Paddy Field",
//                                 maxLines: 2,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     color: Color(0xFFF56D5D), fontSize: 25),
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: <Widget>[
//                                   Text(
//                                     "Post on ",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: Colors.grey, fontSize: 12),
//                                   ),
//                                   Text(
//                                     "June 18, 2019",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: Color(0xFFF56D5D), fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Spacer(
//                                   flex: 10,
//                                 ),
//                                 Icon(
//                                   Icons.thumb_up,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(
//                                   flex: 1,
//                                 ),
//                                 Text(
//                                   "99",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(
//                                   flex: 5,
//                                 ),
//                                 Icon(
//                                   Icons.comment,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(
//                                   flex: 1,
//                                 ),
//                                 Text(
//                                   "88",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(
//                                   flex: 10,
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Inkwell Buat Button Gradasi"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 color: Colors.amber,
//                 child: Text("Raised Button"),
//                 shape: StadiumBorder(),
//                 onPressed: () {},
//               ),
//               Material(
//                 borderRadius: BorderRadius.circular(20),
//                 elevation: 5,
//                 child: Container(
//                   width: 150,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       gradient: LinearGradient(
//                         colors: [Colors.purple, Colors.pink],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                       )),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.transparent,
//                     child: InkWell(
//                       splashColor: Colors.amber,
//                       borderRadius: BorderRadius.circular(20),
//                       onTap: () {},
//                       child: Center(
//                           child: Text(
//                         "My Button",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.w600),
//                       )),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Media Query"),
//         ),
//         body: (MediaQuery.of(context).orientation == Orientation.portrait)
//             ? Column(
//                 children: generateContainers(),
//               )
//             : Row(
//                 children: generateContainers(),
//               ));
//   }

//   List<Widget> generateContainers() {
//     return <Widget>[
//       Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.green,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.blue,
//         width: 100,
//         height: 100,
//       )
//     ];
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController(text: "nilai awal");

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Field"),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.adb),
//                   fillColor: Colors.lightBlue[50],
//                   filled: true,
//                   suffix: Container(
//                     width: 20,
//                     height: 5,
//                     color: Colors.red,
//                   ),
//                   prefixIcon: Icon(Icons.person),
//                   // prefixText: "Name :",
//                   prefixStyle: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w700,
//                   ),
//                   labelText: "Name Lengkap",
//                   hintText: "Nama Lengkap Anda",
//                   hintStyle: TextStyle(fontSize: 12),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10)
//                   )
//                 ),
//                 obscureText: true,
//                 maxLength: 5,
//                 maxLines: 1,
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               buildCard(Icons.account_box, "Account Box"),
//               buildCard(Icons.adb, "Serangga Android"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Card buildCard(IconData iconData, String text) {
//     return Card(
//       elevation: 5,
//       child: Row(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(5),
//             child: Icon(iconData, color: Colors.grey,),
//           ),
//           Text(text)
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   Color targetColor = Colors.grey;

//   bool isAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Dragable"),
//           ),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Draggable<Color>(
//                     data: color1,
//                     child: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: color1,
//                         shape: StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                     childWhenDragging: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: Colors.grey,
//                         shape: StadiumBorder(),
//                       ),
//                     ),
//                     feedback: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: color1.withOpacity(0.7),
//                         shape: StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                   ),
//                   Draggable<Color>(
//                     data: color2,
//                     child: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: color2,
//                         shape: StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                     childWhenDragging: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: Colors.grey,
//                         shape: StadiumBorder(),
//                       ),
//                     ),
//                     feedback: SizedBox(
//                       width: 50,
//                       height: 50,
//                       child: Material(
//                         color: color1.withOpacity(0.7),
//                         shape: StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               DragTarget<Color>(
//                 onWillAccept: (value) => true,
//                 onAccept: (value) {
//                   isAccepted = true;
//                   targetColor = value;
//                 },
//                 builder: (context, candidates, rejected) {
//                   return (isAccepted)
//                       ? SizedBox(
//                           width: 100,
//                           height: 100,
//                           child: Material(
//                             color: targetColor.withOpacity(0.7),
//                             shape: StadiumBorder(),
//                             elevation: 3,
//                           ),
//                         )
//                       : SizedBox(
//                           width: 100,
//                           height: 100,
//                           child: Material(
//                             color: targetColor.withOpacity(0.7),
//                             shape: StadiumBorder(),
//                           ),
//                         );
//                 },
//               )
//             ],
//           )),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Image Widget"),
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.black,
//           width: 200,
//           height: 200,
//           padding: EdgeInsets.all(3),
//           child: Image(
//             image: AssetImage("assets/thanos.jpeg"),
//             // image: NetworkImage(
//             //     "https://i2.wp.com/metro.co.uk/wp-content/uploads/2018/12/blackpink-2-f838.jpg?quality=90&strip=all&zoom=1&resize=644%2C416&ssl=1"),
//             fit: BoxFit.contain,
//             // repeat: ImageRepeat.repeat,
//           ),
//         ),
//       ),
//     ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stack n align widget"),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             )
//             // ListView(
//             //   children: <Widget>[
//             //     Column(
//             //       children: <Widget>[
//             //         Text("Ini adalah text yang ada di lapisan tengah stack", style: TextSyle(fontSize))
//             //       ],
//             //     )
//             //   ],
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flexible Layout"),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.red,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.green,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.yellow,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 color: Colors.amber,
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random = Random();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Animated Container"),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {

//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(256), random.nextInt(256)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

//   // _MyAppState() {
//   //   for (int i = 0; i < 15; i++)
//   //     widgets.add(Text(
//   //       "data " + i.toString(),
//   //       style: TextStyle(fontSize: 35),
//   //     ));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("List View"),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text("Tambah Data"),
//                   onPressed: () => {
//                     setState(() {
//                       widgets.add(Text(
//                         "data " + counter.toString(),
//                         style: TextStyle(fontSize: 30),
//                       ));
//                       counter++;
//                     })
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text("Hapus Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   },
//                 )
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: widgets,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
