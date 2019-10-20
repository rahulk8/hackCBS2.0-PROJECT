import 'package:cloud_firestore/cloud_firestore.dart';

class SearchDoctorService {
  searchByName(String searchField) {
    return Firestore.instance
        .collection('doctors')
        .where('searchKey',
            isEqualTo: searchField.substring(0, 1).toUpperCase())
        .getDocuments();
  }
}
