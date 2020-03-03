import 'package:glencee/helpers/network_layer.dart';

class SignUpController {
  NetWork netWork = NetWork();
  Future<String> postSignUp(
      {String name,
      int userType,
      String phone,
      String email,
      String country,
      String password,
      String confirmPassword}) async {
    Map<String, dynamic> _userData = {
      'FullName': name,
      'UserType': userType,
      'PhoneNumber': phone,
      'Email': email,
      'Country': country,
      'Password': password,
      'ConfirmPassword': confirmPassword
    };
    var data = await netWork.postData(formData: _userData, url: '/Register');
    return 'sucess';
  }
}
