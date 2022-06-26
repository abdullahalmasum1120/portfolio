import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/models/user_data.dart';
import 'package:portfolio/domain/repositories/i_user_data.dart';

class UserRepository extends IUserData {
  @override
  Future<UserData> fetchUserData() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await super.firebaseFirestore.collection("portfolio").doc("aam").get();
    return UserData.fromJson(snapshot.data() as Map<String, dynamic>);
  }
}
