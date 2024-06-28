import 'package:get/get.dart';
import 'package:login/Repository/home_repository/home_repository.dart';
import 'package:login/data/response/status.dart';
import 'package:login/models/home/user_list_model.dart';
import 'package:login/models/login/user_model.dart';

class HomeViewModel extends GetxController
{
  final _api = HomeRepository();
  final rxRequest = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequest.value =_value;

  void setUserList(UserListModel _value) => userList.value =_value;
  void setError(String _value) => error.value =_value;
  void userListApi()
  {
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value as UserListModel);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
      print(error);
      print(stackTrace);

    });
  }

  void refreshApi()
  {

    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value as UserListModel);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
      print(error);
      print(stackTrace);

    });
  }
}