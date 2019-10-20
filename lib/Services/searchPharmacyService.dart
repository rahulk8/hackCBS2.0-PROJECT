import 'package:cloud_firestore/cloud_firestore.dart';

class SearchPharmacyService {
  searchByName(String searchField) {
    return Firestore.instance
        .collection('pharmacy')
        .where('searchKey',
            isEqualTo: searchField.substring(0, 1).toUpperCase())
        .getDocuments();
  }
}
