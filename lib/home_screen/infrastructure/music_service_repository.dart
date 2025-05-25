import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:srocksmusic/home_screen/model/music_service_model.dart';

class FirestoreServiceRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<ServiceModel>> getServices() async {
    final snapshot = await _db.collection('services').get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromFirestore(doc.data()))
        .toList();
  }
}
