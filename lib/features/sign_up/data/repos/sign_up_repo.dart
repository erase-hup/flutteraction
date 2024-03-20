import 'package:appointment_doctor_app/core/networking/api_error_handler.dart';
import 'package:appointment_doctor_app/core/networking/api_result.dart';
import 'package:appointment_doctor_app/core/networking/api_service.dart';
import 'package:appointment_doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:appointment_doctor_app/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.sigUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
