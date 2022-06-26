import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/models/user_data.dart';
import 'package:portfolio/data/repoeitories/user_repository.dart';

final userProvider =
    FutureProvider<UserData>((ref) => UserRepository().fetchUserData());
