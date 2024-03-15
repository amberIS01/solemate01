import 'package:ecommerceapp/constants/routes.dart';
import 'package:ecommerceapp/screens/aut_ui/sign_up/sign_up.dart';
import 'package:ecommerceapp/widgets/primary_button/primary_button.dart';
import 'package:ecommerceapp/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopTitles(subtitle: "Welcome Back to APP", title: "Login"),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                )),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            obscureText: isShowPassword,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  padding: EdgeInsets.zero,
                  child: const Icon(Icons.visibility)),
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          PrimaryButton(
            title: "Login",
            onPressed: () {},
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Center(child: Text("Don't have an account?")),
          Center(
            child: CupertinoButton(
              onPressed: () {
                Routes.instance.push(const SignUp(), context);
              },
              child: Text(
                "Create an account",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
