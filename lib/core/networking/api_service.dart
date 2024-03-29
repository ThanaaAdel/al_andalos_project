import 'package:dio/dio.dart' hide Headers;
import '../../features/auth/login_screen/data/models/login_request_body.dart';
import '../../features/auth/login_screen/data/models/api_parent_response_login.dart';
import 'api_constant.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  @FormUrlEncoded()
  Future<ParentResponseBody> login(
      @Body() LoginRequestBody loginRequestBody,
      );
  // @POST(ApiConstant.register)
  // @FormUrlEncoded()
  // Future<ParentResponseBody> register(
  //     @Body() RegisterRequestBody registerRequestBody,
  //     );
  // @POST(ApiConstant.logout)
  // Future<ParentResponseBody> logout(
  //     );
}


