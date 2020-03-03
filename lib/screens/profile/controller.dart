import 'package:dio/dio.dart';
import 'package:glencee/helpers/network_layer.dart';
import 'package:glencee/screens/profile/model.dart';

class ProfileController {
  NetWork netWork = NetWork();
  ProfileModel profileModel = ProfileModel();

  Future<ProfileModel> postProfile() async {
    var data = await netWork.postData(
        url: '/UserInfo');
    profileModel = ProfileModel.fromJson(data);
    return profileModel;
  }
}
