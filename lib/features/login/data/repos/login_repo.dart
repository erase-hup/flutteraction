import 'package:appointment_doctor_app/core/networking/api_error_handler.dart';
import 'package:appointment_doctor_app/core/networking/api_result.dart';
import 'package:appointment_doctor_app/core/networking/api_service.dart';
import 'package:appointment_doctor_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_doctor_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<LoginResponse>> login(LoginRequestBody requestBody) async {
    try {
      final response = await _apiService.login(requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
