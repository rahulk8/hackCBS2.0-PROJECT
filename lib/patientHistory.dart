import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_grace1/Services/userManagement.dart';

class PatientHistory extends StatefulWidget
{
  String patientId;
  
  PatientHistory(String patientId)
  {
    this.patientId = patientId;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PatientHistoryState(this.patientId);
  }
  
} 

class PatientHistoryState extends State<PatientHistory>
{String patientId;

  PatientHistoryState(String patientId)
{
  this.patientId = patientId;
}


QuerySnapshot patient;
UserManagement userManagement= new UserManagement();
bool existPatient = false;


@override
void initState()
{
 super.initState(); 
userManagement.getPrescription(this.patientId).then((QuerySnapshot result)
{
  debugPrint("DATA PRODUCED IS : $result");
 if(result.documents.isNotEmpty)
 {
   existPatient = true;
   patient = result;
   debugPrint(patient.documents[0].data['docName']);
 }
}

);

debugPrint("Data is: $patient");
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient History"),
      ),
      body: dataList(),
    )
    
    ;
  }
  
Widget dataList()
{
  if(existPatient == true)
  {
    return ListView.builder(
      itemCount: patient.documents.length,
      padding: EdgeInsets.all(10.0),
      itemBuilder: (context,i)
      {
        return new ListTile(
          title: Text(patient.documents[0].data['docName']),
        );
      }
      ,
          );
  }
  else
  {
   Text("Please Wait");
  }
}

}