import 'package:flutter/material.dart';
import 'package:life_grace1/PatientDetails.dart';
import 'package:life_grace1/doctorsScreen.dart';
import 'package:life_grace1/mainLoginScreen.dart';
import 'package:life_grace1/patientHistory.dart';
import 'package:splashscreen/splashscreen.dart';
import './loginScreen.dart';
import './registerScreen.dart';
import 'patientSearchScreen.dart';
import 'HomePage.dart';
import './DashBoardPage.dart';


void main()=>runApp(
  MaterialApp(
  title: 'Life Grace',
  home: MyApp(),
  debugShowCheckedModeBanner: false,
  //theme: ThemeData(primaryColor: Colors.greenAccent),
  theme: ThemeData(
        brightness:Brightness.light,
        primaryColor: Colors.cyan[400],
        accentColor: Colors.deepOrange[200],
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0,fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0,fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 18.0)
        )
      ),

      routes: <String, WidgetBuilder>{
        '/landingpage' :(BuildContext context)=>new LoginScreen(),
        '/signup' :(BuildContext context)=>new RegisterScreen(),
        '/homepage' :(BuildContext context)=>new HomePage("12345"),
            '/doctorScreen' :(BuildContext context)=>new DoctorScreen(),
        '/searchScreen' :(BuildContext context)=>new PatientSearchScreen(),
      '/patientDetails' :(BuildContext context)=>new PatientDetails(),
      //  '/searchpage' :(BuildContext context)=>new SearchPage(),
       // '/searchdoctorpage' :(BuildContext context)=>new SearchDoctorPage(),
       // '/searchpharmacypage' :(BuildContext context)=>new SearchPharmacyPage(),
        'dialogboardpage' :(BuildContext context)=>new DashBoardPage(),
      }

    
    ),
 
); 


class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  

  
  @override
  Widget build(BuildContext ctxt) {
   
     

return new SplashScreen(
    seconds: 5,
   navigateAfterSeconds: new checkAuth(),
  /* title: new Text(
      'Life Grace',
      style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontFamily: 'Chunkfive'),
   ), */
    title: Text("Universal Medical App"),
    //image: Image.network('http://logok.org/wp-content/uploads/2014/05/CNN-logo-880x660.png'),
    backgroundColor: Colors.greenAccent,
   /* gradientBackground: LinearGradient(
    tileMode: TileMode.repeated,
       colors: [
            // Colors are easy thanks to Flutter's Colors class.
            //const Color(0xFF4b33b5),
            Colors.greenAccent[200],
            Colors.lightBlueAccent[200],
            Colors.tealAccent[400],
            Colors.lightBlueAccent[200],
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5,0.7,0.9],
         
    ), */
      
      

    
    styleTextUnderTheLoader: new TextStyle(fontFamily:'Chunkfive'),
    photoSize: 150.0,
    loaderColor: Colors.transparent,
    //imageBackground: Image.network("images/regatta.jpg"),

);


    
  }
}