part of 'LoginWidgetsImports.dart';

class BuildLoginForm extends StatefulWidget {
  const BuildLoginForm({Key? key, required this.loginData,}) : super(key: key);
  final LoginData loginData;

  @override
  State<BuildLoginForm> createState() => _BuildLoginFormState();
}

class _BuildLoginFormState extends State<BuildLoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.loginData.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.loginData.emailController,
            validator: (v){
              if(v!.isEmpty){
                return 'Enter your Email';
              }
            },
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            controller: widget.loginData.passwordController,
            validator: (v){
              if(v!.isEmpty){
                return 'Password must not be empty';
              } else if(v.length<5){
                return 'Password is too short';
              }
            },
            obscureText: widget.loginData.visible,
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    widget.loginData.visible = !widget.loginData.visible;
                  });
                },
                icon: widget.loginData.visible
                    ? const Icon(Icons.visibility)
                    :const Icon(Icons.visibility_off),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
