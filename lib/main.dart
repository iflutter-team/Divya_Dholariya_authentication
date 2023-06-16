import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Registration.dart';
import 'package:untitled/home.dart';
import 'package:untitled/login.dart';
import 'package:untitled/services/pref_services.dart';
import 'package:untitled/splace.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();////
  await PrefService.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
    ),
  );
}

