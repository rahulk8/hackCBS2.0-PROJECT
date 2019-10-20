
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:life_grace1/loginScreen.dart';
/*import 'package:firebase_auth/firebase_auth.dart';
import 'firestore_class.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; */

class HomePage extends  StatefulWidget
{
  String id;
  HomePage(String id)
  {
    this.id = id;
  }
  @override
  HomePageState createState()=> HomePageState(this.id);

}

class HomePageState extends State<HomePage>
{
   String id;
  HomePageState(String id)
  {
    this.id = id;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You are now logged in !!'),
              Text("YOUR USERID IS: $id"),
              SizedBox(height: 15.0),

              OutlineButton(
                child: Text('Logout'),
                onPressed: (){
                  FirebaseAuth.instance.signOut().then((value){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context)
{
  return LoginScreen();
}

                    ));

                  }).catchError((e){
                    print(e);
                  });
                },
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 3.0
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }

} 