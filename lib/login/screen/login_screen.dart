import 'package:company_list/core/common/custom_textfield.dart';
import 'package:company_list/core/common/page_holder.dart';
import 'package:company_list/core/util/flutter_toast.dart';
import 'package:company_list/dashboard/screen/dashboard_screen.dart';
import 'package:company_list/login/repo/login_repo.dart';
import 'package:company_list/login/repo/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/login_notifier.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _key=GlobalKey();


  @override
  void initState() {
    super.initState();
    _emailController.text="suman@kodiary.com";
    _passwordController.text="P@ssw0rd";
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginNotifierProvider, (previous, next) {
      if(next is LoginSuccessState){
        showSuccessToast("Login success");
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen(them: next.model.theme!,)));
      }else if(next is LoginError){
        showErrorToast(next.failure.message);
      }
    });

    return PageHolder(
        appTitle: "Login",
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(controller: _emailController, labelText: "Email",
                  validator: (v){
                    if(v!.isEmpty){
                      return "Email is required";
                    }

                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  controller: _passwordController,
                  labelText: "Password",
                  validator: (v){
                    if(v!.isEmpty){
                      return "Password is required";
                    }

                  },
                  isPassword: true,
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(onPressed: ()async{
                  if(_key.currentState!.validate()){
                   await ref.read(loginNotifierProvider.notifier).login({
                      "email":_emailController.text,
                      "password":_passwordController.text
                    });
                  }

                }, child: Text("Login"))
              ],
            ),
          ),
        ));
  }
}
