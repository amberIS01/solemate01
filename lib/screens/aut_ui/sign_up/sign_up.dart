import 'package:ecommerceapp/constants/routes.dart';
import 'package:ecommerceapp/screens/aut_ui/login/login.dart';
import 'package:ecommerceapp/screens/home/home.dart';
import 'package:ecommerceapp/widgets/primary_button/primary_button.dart';
import 'package:ecommerceapp/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          const TopTitles(subtitle: "Welcome to APP", title: "CreateAccount"),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "Name",
                prefixIcon: Icon(
                  Icons.person_outline,
                )),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "E-Mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                )),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
                hintText: "Phone",
                prefixIcon: Icon(
                  Icons.phone_android_outlined,
                )),
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextFormField(
            obscureText: isShowPassword,
            decoration: InputDecoration(
              hintText: "Create Password",
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
            title: "Create",
            onPressed: () {
              Routes.instance.pushAndRemoveUntil(const Home(), context);
            },
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Center(child: Text("Already have an account?")),
          Center(
            child: CupertinoButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Login",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
