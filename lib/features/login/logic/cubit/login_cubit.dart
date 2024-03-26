import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit({required LoginRepo loginRepo})
      : _loginRepo = loginRepo,
        super(const LoginState.initial());

  factory LoginCubit.get(context) => BlocProvider.of<LoginCubit>(context);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final request = LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    );
    final response = await _loginRepo.login(request);

    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(message: error.apiErrorModel.message ?? ""));
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
