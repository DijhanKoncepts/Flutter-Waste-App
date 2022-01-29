import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userapp/AllScreens/loginpage.dart';
import 'package:userapp/AllScreens/mainpage.dart';
import 'package:userapp/AllScreens/registrationpage.dart';
import 'package:userapp/DataHandler/appData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBhZZIyi4OR7ZwtcgiMyu_uLUh-FJ8yQPU",
          appId: "1:318065796129:android:842f706cd7d7cf7caeef60",
          messagingSenderId: "318065796129",
          projectId: "flutter-waste-app-5ac61"));
  runApp(MyApp());
}



DatabaseReference userRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'SelectionWaste User App',
        theme: ThemeData(
          fontFamily: "Brand Bold",
          primarySwatch: Colors.green,
        ),
        initialRoute: LoginPage.idPage,
        routes: {
          RegistrationPage.idPage: (context) => RegistrationPage(),
          LoginPage.idPage: (context) => LoginPage(),
          MainPage.idPage: (context) => MainPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
