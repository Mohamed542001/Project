part of 'SettingsWidgetsImports.dart';

class BuildSettingsForm extends StatefulWidget {
  const BuildSettingsForm({Key? key}) : super(key: key);

  @override
  State<BuildSettingsForm> createState() => _BuildSettingsFormState();
}

class _BuildSettingsFormState extends State<BuildSettingsForm> {

  SettingsData settingsData = SettingsData();
  UsersModel? usersModel;

  getUser() async{
    usersModel = await settingsData.readUsers();
  }

  @override
  void initState() {
    getUser();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
     Column(
      children: [
        Text('${usersModel?.name}'),

        CustomInputFormField(
          enabled: false,
          labeltxt: usersModel?.name,
          icon: Icons.drive_file_rename_outline,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomInputFormField(
          enabled: false,
          labeltxt: usersModel?.address,
          icon: Icons.drive_file_rename_outline,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomInputFormField(
          enabled: false,
          labeltxt: usersModel?.age,
          icon: Icons.drive_file_rename_outline,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomInputFormField(
          enabled: false,
          labeltxt: usersModel?.phone,
          icon: Icons.call_rounded,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomInputFormField(
          enabled: false,
          labeltxt: usersModel?.email,
          icon: Icons.email,
        ),
      ],
    );
  }
}
