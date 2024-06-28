import 'package:login/data/network/network_api_services.dart';
import 'package:login/models/login/user_model.dart';
import 'package:login/resources/app+url/app_url.dart';

class HomeRepository{

  final _apiService = NetworkApiServices();

  Future<UserModel> userListApi()async
  {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserModel.fromJson(response);
  }


}