part of 'SettingsImports.dart';

class SettingsData{
  List<UsersModel> usersModel = [];
  Future<void> readUsers() async{
    await FirebaseFirestore.instance.collection('users').get().then((value) {
      value.docs.forEach((element) {
        usersModel.add(UsersModel.fromJson(element.data()));
      });
    });
    print(usersModel[0].name);
  }
}