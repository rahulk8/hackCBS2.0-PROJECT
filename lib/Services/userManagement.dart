 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:life_grace1/HomePage.dart';

class UserManagement{
  String pid;
  storeNewUser(userData,context,id)
  {
    pid = id;
    Firestore.instance.collection('/user').add(userData).then((value)
    
        {
           }).catchError((e)
    {
      print(e);
    }
    );
  }

   storeNewPatient(patientData,context)
  {
    Firestore.instance.collection('/patientTable').add(patientData).then((value)
    
        {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context)
{
  return HomePage(pid);
}

          ));
        }).catchError((e)
    {
      print(e);
    }
    );
  }

  getDoctors(String docId) 
{
return  Firestore.instance.collection("doctors").where('id', isEqualTo: docId).getDocuments();


  }

   Future<QuerySnapshot> getPrescription(String patientId) async
{
final QuerySnapshot result = await Firestore.instance.collection("patientPrescription").where('pid', isEqualTo: patientId).getDocuments();
 debugPrint("USERMGMT. CLASS RESULT IS : $result");
 return result;
  }


}  