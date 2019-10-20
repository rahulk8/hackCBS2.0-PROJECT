import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:life_grace1/Services/userManagement.dart';
import 'package:life_grace1/patientSearchScreen.dart';

import 'registerScreen.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DoctorScreenState();
  }
}

class DoctorScreenState extends State<DoctorScreen> {
  QuerySnapshot doctorData;
  String loginId;
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 800.0,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFFA16BFE),
                Color(0xFFDEB0DF),
              ])),
        ),
        Container(
          height: 350.0,
          width: double.infinity,
        ),
        Positioned(
          top: 100.0,
          left: 20.0,
          child: Text(
            "Welcome Doc ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 160.0,
          left: 20.0,
          child: Text(
            "Please Login to access account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
            top: 250.0,
            left: 20.0,
            right: 20.0,
            child: GestureDetector(
              onHorizontalDragStart: (value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(mainAxisSize: MainAxisSize.min,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                              ),
                              child: Text(
                                "Welcome back",
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 1.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                    Color(0xFFA16BFE),
                                    Color(0xFFDEB0DF),
                                  ])),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter ur provided id",
                                    //border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Colors.deepPurpleAccent,
                                      size: 25.0,
                                    )),
                                onChanged: (value) {
                                  setState(() {
                                    this.loginId = value;
                                  });
                                },
                              ),
                            ),
                          
                            SizedBox(
                              height: 50.0,
                            ),
                            FlatButton(
                              //color: Colors.deepPurpleAccent,
                              child: Text("Login  ->"),
                              onPressed: () {
                                UserManagement userManagement = new UserManagement();
                              debugPrint("DOCTOR ID IS: $loginId");
                                userManagement.getDoctors(this.loginId).then((result)
                                {
                                  setState(() {
                                   doctorData = result; 
                                  });

                                }
                                ).catchError((e)
                                {
                                  print("Error is :$e");
                                }
                                );
                              if(doctorData != null)
{
  Navigator.of(context).pushReplacement(
                                                  MaterialPageRoute(
                                                    builder: (BuildContext context)
                                                    {
                                                     return PatientSearchScreen(); 
                                                    }
                                                  )
                                                );
}
else
{
  debugPrint("DOCTOR DOES NOT EXIST");
}
                              },
                              textColor: Colors.deepPurpleAccent,
                              splashColor: Colors.purple,
                              padding: EdgeInsets.only(
                                  left: 50.0,
                                  right: 50.0,
                                  top: 10.0,
                                  bottom: 10.0),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.deepPurpleAccent),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          
                          ]),
                    )),
              ),
            )),
      ],
    );
  }
}