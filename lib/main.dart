import 'package:flutter/material.dart';
import 'package:hammem/provider/Admin.dart';
import 'package:hammem/provider/modelhub.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/Admins/Admins.dart';
import 'package:hammem/screens/SignUp.dart';
import 'package:hammem/screens/login.dart';
import 'package:hammem/screens/user/HomePage.dart';
import 'package:hammem/screens/user/Info.dart';
import 'package:hammem/screens/user/MoreInfo.dart';
import 'package:hammem/screens/user/QuestionPage/FinalPage.dart';
import 'package:hammem/screens/user/QuestionPage/Question1/Question1-Part2.dart';
import 'package:hammem/screens/user/QuestionPage/Question1/Question1-Part3.dart';
import 'package:hammem/screens/user/QuestionPage/Question1/question1.dart';
import 'package:hammem/screens/user/QuestionPage/Question2/Question2-Part1.dart';
import 'package:hammem/screens/user/QuestionPage/Question2/Question2.dart';
import 'package:hammem/screens/user/QuestionPage/Question3/Question3-Part1.dart';
import 'package:hammem/screens/user/QuestionPage/Question3/Question3-Part2.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/Q4Part1.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/Question4.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Q5Part1.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Q5Part2.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Question5.dart';
import 'package:hammem/screens/user/QuestionPage/Question6/Q6P1.dart';
import 'package:hammem/screens/user/QuestionPage/Question6/Question6.dart';
import 'package:hammem/screens/user/QuestionPage/questionPage.dart';
import 'package:hammem/screens/user/ShowResult.dart';
import 'package:hammem/splash.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //==================provider=======================//
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Mpdalhub>(
          create: (context) => Mpdalhub(),
        ),
        ChangeNotifierProvider<AdminMode>(
          create: (context) => AdminMode(),
        ),
        ChangeNotifierProvider(
          create: (context) => QuestionProvider(),
        ),
      ],
      child: MaterialApp(
//        builder: DevicePreview.appBuilder,
        title: "حميم",
        color: Colors.grey,
        debugShowMaterialGrid: false,
        showSemanticsDebugger: false,
        theme: ThemeData(
          backgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignUp.id: (context) => SignUp(),
          HomePage.id: (context) => HomePage(),
          Splash.id: (context) => Splash(),
          Info.id: (context) => Info(),
          More.id: (context) => More(),
          Question.id: (context) => More(),
          Result.id: (context) => Result(),
          Admins.id: (context) => Admins(),
          Question.id: (context) => Question(),
          Question1.id: (context) => Question1(),
          Qpart1.id: (context) => Qpart1(),
          Part3.id: (context) => Part3(),
          Question2.id: (context) => Question2(),
          Q2Part1.id: (context) => Q2Part1(),
          Q3Part1.id: (context) => Q3Part1(),
          Q3Part2.id: (context) => Q3Part2(),
          Question4.id: (context) => Question4(),
          Q4Part1.id: (context) => Q4Part1(),
          Q5.id: (context) => Q5(),
          Q5P1.id: (context) => Q5P1(),
          Q5P2.id: (context) => Q5P2(),
          Q6.id: (context) => Q6(),
          Q6P1.id: (context) => Q6P1(),
          Final.id: (context) => Final(),
        },
      ),
    );
  }
}
