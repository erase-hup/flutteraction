import 'package:appointment_doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:appointment_doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:appointment_doctor_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit({required SignUpRepo signUpRepo})
      : _signUpRepo = signUpRepo,
        super(const SignUpState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  void emitSignUpStates() async {
    emit(const SignUpState.signUpLoading());

    final request = SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
      gender: 0,
    );

    final response = await _signUpRepo.signUp(request);

    response.when(
      success: (data) {
        emit(SignUpState.signUpSuccess(data));
      },
      failure: (error) {
        emit(
          SignUpState.signUpError(message: error.apiErrorModel.message ?? ""),
        );
      },
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();

    return super.close();
  }
}
