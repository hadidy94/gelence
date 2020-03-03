import 'package:glencee/screens/login/model.dart';
import 'package:glencee/helpers/network_layer.dart';

class LoginController {
  NetWork netWork = NetWork();
  LoginModel loginModel = LoginModel();

  Future<LoginModel> postLogin(
      {String grantType, String userName, String password}) async {
    Map<String, dynamic> _userData = {
      'grant_type': grantType,
      'password': password,
      'username': userName,
    };
    var data = await netWork.postData(
      url: '/token',
      formData: _userData,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
    );
    print(data);
    loginModel = LoginModel.fromJson(data);
    return loginModel;
  }
}
