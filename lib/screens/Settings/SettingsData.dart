part of 'SettingsImports.dart';

class SettingsData{
  UsersModel? usersModel;
  Future<UsersModel?> readUsers() async{
    await FirebaseFirestore.instance
        .collection('users')
        .doc('Z4ll2a4asYN1G7NUYoSd')
        .get()
        .then((value) {
      usersModel = UsersModel.fromJson(value.data()!);
    });
    print(usersModel?.phone);
    return usersModel;
  }
}