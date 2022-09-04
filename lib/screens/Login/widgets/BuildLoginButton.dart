part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  const BuildLoginButton({Key? key, required this.loginData,}) : super(key: key);
  final LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
      child: DefaultButton(
        onTap: (){
          if(loginData.formKey.currentState!.validate()){
            print(loginData.emailController.text);
            print(loginData.passwordController.text);

            FirebaseAuth.instance.signInWithEmailAndPassword(
                email: loginData.emailController.text,
                password: loginData.passwordController.text
            ).then((value) {
              print(value.user!.email);
              print(value.user!.uid);
              print('Login Success');
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_)=>const NavigatorPage()),
                    (route) => false,
              );
            }).catchError((error){
              print(error.toString());
            });
          }

        },
        margin: const EdgeInsets.all(0),
        title: 'Login',
        width: double.infinity,
      ),
    );
  }
}


