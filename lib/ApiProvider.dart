import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/UsersModel/users_model.dart';

class ApiProvider{
  UsersModel? usersModel;


  Future<UsersModel?> readUsers() async{
    await FirebaseFirestore.instance
        .collection('users')
        .doc('Z4ll2a4asYN1G7NUYoSd')
        .get().
    then((value) {
      usersModel = UsersModel.fromJson(value.data()!);
    });
    print(usersModel?.phone);
    return usersModel;
  }



}