// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:untitled/home.dart';
// import 'package:untitled/login.dart';
// import 'package:untitled/services/pref_services.dart';
// import 'package:untitled/util/pref_resorce.dart';
//
// class SplaceScreen extends StatefulWidget {
//   const SplaceScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplaceScreen> createState() => _SplaceScreenState();
// }
//
// class _SplaceScreenState extends State<SplaceScreen> {
//   //
//   @override
//   void initState() {
//     bool islogin = PrefService.getBool(PrefResources.isRegister);////
//     Timer(Duration(seconds: 5), () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => islogin?const HomeScreen():const Login(),));
//     });
//   }
//   //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FlutterLogo(),
//           ],
//         ),
//       ),
//     );
//   }
// }
