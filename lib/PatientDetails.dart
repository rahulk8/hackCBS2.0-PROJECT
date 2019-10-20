import 'package:flutter/material.dart';
import 'PatientModel.dart' as PatientModel;

class PatientDetails extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PatientDetailsState();
  }
  
}

class PatientDetailsState extends State<PatientDetails>
{
PageController _controller = new PageController(viewportFraction: 0.8);


@override
void dispose()
{
  super.dispose();
  _controller.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color(0xff00F260),
                                Color(0xff0575E6),
                                Color(0xfff64f59)
                              ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: (MediaQuery.of(context).size.height) / 7,
                                  bottom:
                                      (MediaQuery.of(context).size.height) / 8),
                              height: 700.0,
                              child:
                              PageView(
  children: <Widget>[
    Container(             //padding: EdgeInsets.all(10.0),
                                        child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            elevation: 10.0,
                                            child: ListView(
                                                //mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Patient ID : 23615",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          fontFamily:
                                                              'PlayfairDisplay'),
                                                    ),
                                                  ),
                                                    SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                 
                                                  Container(
                                                    padding: EdgeInsets.only(top: 10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                     "Doctor Name : Atul Kumar",
                                                      style: TextStyle(
                                                        color: Colors.greenAccent,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                 SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),Container(
                                                    alignment: Alignment.center,
                                                     padding: EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                      "Date of Checkup : 28-nov-2018",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      " DISEASE  :  Bone Dislocation",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                  
                                                      " PRESCRIPTION:   2 MONTHS BED REST and healthy diets with 15 days regular checkup.",
                                                      style: TextStyle(
                                                        
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ]))),
 //2nd card
   Container(             
     //padding: EdgeInsets.all(10.0),
                                        child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            elevation: 10.0,
                                            child: ListView(
                                                //mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Patient ID : 23615",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          fontFamily:
                                                              'PlayfairDisplay'),
                                                    ),
                                                  ),
                                                    SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                 
                                                  Container(
                                                    padding: EdgeInsets.only(top: 10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                     "Doctor Name : Prakash Singh",
                                                      style: TextStyle(
                                                        color: Colors.greenAccent,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                 SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),Container(
                                                    alignment: Alignment.center,
                                                     padding: EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                      "Date of Checkup : 10-Dec-2018",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      " DISEASE  :  Bone Dislocation",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                  
                                                      " PRESCRIPTION:   1 MONTHS BED REST and Proper Medication",
                                                      style: TextStyle(
                                                        
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ]))),
 
   //3rd card
 Container(             
   //padding: EdgeInsets.all(10.0),
                                        child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            elevation: 10.0,
                                            child: ListView(
                                                //mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Patient ID : 23615",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          fontFamily:
                                                              'PlayfairDisplay'),
                                                    ),
                                                  ),
                                                    SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                 
                                                  Container(
                                                    padding: EdgeInsets.only(top: 10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                     "Doctor Name : Anuj Kumar",
                                                      style: TextStyle(
                                                        color: Colors.greenAccent,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                 SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),Container(
                                                    alignment: Alignment.center,
                                                     padding: EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                      "Date of Checkup : 02-Jan-2019",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      " DISEASE  :  Bone Dislocation",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                  
                                                      " PRESCRIPTION: 21 days BED REST and Regular Yoga and Medication.",
                                                      style: TextStyle(
                                                        
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ]))),

                                                
   //4th card
 Container(             
   //padding: EdgeInsets.all(10.0),
                                        child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            elevation: 10.0,
                                            child: ListView(
                                                //mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Patient ID : 23615",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          fontFamily:
                                                              'PlayfairDisplay'),
                                                    ),
                                                  ),
                                                    SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                 
                                                  Container(
                                                    padding: EdgeInsets.only(top: 10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                     "Doctor Name : Prince Ahuja",
                                                      style: TextStyle(
                                                        color: Colors.greenAccent,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  
                                                 SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),Container(
                                                    alignment: Alignment.center,
                                                     padding: EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                      "Date of Checkup : 20-Jan-2019",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      " DISEASE  :  Bone Dislocation",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                    Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                  
                                                      " PRESCRIPTION: 20 days BED REST and Mental Rest.",
                                                      style: TextStyle(
                                                        
                                                        color: Colors.grey[500],
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                ]))),
 
   
 
  ],
)
                              
                             ));
  }
  
}