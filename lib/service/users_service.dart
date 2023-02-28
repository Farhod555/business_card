import 'package:business_card/config/dio_config.dart';
import 'package:business_card/models/users_model.dart';
import 'package:dio/dio.dart';

import '../network/api.dart';
import 'log_service.dart';

class GetUsersService {
  static final GetUsersService _inheritance = GetUsersService._init();

  static GetUsersService get inheritance => _inheritance;

  GetUsersService._init();

  static Future<List<UsersModel>?> getUsers() async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().get(Urls.getUsers);
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<UsersModel> usersList = [];
        for (var e in (res.data as List)) {
          usersList.add(UsersModel.fromJson(e));
        }

        return usersList;
      } else {
        Log.e('${res.statusMessage} ${res.statusCode}');
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
    }
    return null;
  }

  static Future<bool> addUsers(UsersModel newUsers) async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().post(Urls.addUsers);
      Log.i(res.data.toString());
      Log.i(res.data.toString());

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      } else {
        Log.e('${res.statusMessage} ${res.statusCode}');
        return false;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
        return false;
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
      return false;
    }
  }
}
