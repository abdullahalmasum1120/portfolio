import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/models/user_data.dart';

abstract class IUserData {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<UserData> fetchUserData();
}
