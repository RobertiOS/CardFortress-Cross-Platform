import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:domain/domain.dart';

class AuthtenticationWidget extends StatelessWidget {
  const AuthtenticationWidget(
      {super.key, required this.signUpUseCase, required this.signInUseCase});
  final SignUpUseCase signUpUseCase;
  final SignInUseCase signInUseCase;

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      savedEmail: 'roberto.corrales@gmail.com',
      savedPassword: '123456',
      onLogin: (loginData) async {
        try {
          await signInUseCase.signIn(
              account: loginData.name,
              password: loginData.password
              );
        } on Exception catch (e) {
          return e.toString();
        }
      },
      onSignup: (userData) {
        final name = userData.additionalSignupData?['name'];
        final lastName = userData.additionalSignupData?['lastName'];
        signUpUseCase.signUp(
            account: userData.name ?? '',
            password: userData.password ?? '',
            name: name ?? '',
            lastName: lastName ?? '');
      },
      additionalSignupFields: const [
        UserFormField(keyName: 'name', displayName: 'Name'),
        UserFormField(keyName: 'lastName', displayName: 'Last Name')
        ], onRecoverPassword: (userEmail ) { 
          //TODO
         },
    );
  }
}