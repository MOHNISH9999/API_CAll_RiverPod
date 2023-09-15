

import 'package:api_call_riverpod/models/user_models.dart';
import 'package:api_call_riverpod/services/services,.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userdataprovider=FutureProvider<List<UserModels>>((ref) async{
  return ref.watch(userprovider).getUsers();
},);