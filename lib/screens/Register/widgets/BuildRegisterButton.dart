part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  const BuildRegisterButton({
    Key? key,
    required this.registerData,
  }) : super(key: key);
  final RegisterData registerData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DefaultButton(
        onTap: () async {
          final String name = registerData.userNameController.text;
          final String age = registerData.ageController.text;
          final String address = registerData.addressController.text;
          final String phone = registerData.phoneController.text;
          final String email = registerData.emailController.text;

          final docUser = FirebaseFirestore.instance.collection('users').doc();

          final user = UsersModel(
              id: docUser.id,
              name: name,
              age: age,
              address: address,
              phone: phone,
              email: email
          );


          final json = user.toJson();

          await docUser.set(json);

          if (registerData.formKey.currentState!.validate()) {
            print(registerData.userNameController.text);
            print(registerData.phoneController.text);
            print(registerData.emailController.text);
            print(registerData.passwordController.text);

            FirebaseAuth.instance
                .createUserWithEmailAndPassword(
              email: registerData.emailController.text.trim(),
              password: registerData.passwordController.text.trim(),
            )
                .then((value) {
              print(value.user!.email);
              print(value.user!.uid);
              print('success');
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const Login()),
                (route) => false,
              );
            }).catchError((error) {
              print(error.toString());
            });
          }
        },
        margin: const EdgeInsets.all(0),
        title: 'Register Now',
        width: double.infinity,
      ),
    );
  }
}
