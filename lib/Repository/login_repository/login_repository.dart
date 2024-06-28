import 'package:login/data/network/network_api_services.dart';
import 'package:login/resources/app+url/app_url.dart';

class LoginRepository{

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data )async
  {
    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }


}