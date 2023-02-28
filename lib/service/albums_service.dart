import 'package:business_card/config/dio_config.dart';
import 'package:business_card/models/albums_model.dart';
import 'package:business_card/network/api.dart';
import 'package:dio/dio.dart';

import 'log_service.dart';

class GetAlbumsService {
  static final GetAlbumsService _inheritance = GetAlbumsService._init();

  static GetAlbumsService get inheritance => _inheritance;

  GetAlbumsService._init();

  static Future<List<AlbumsModel>?> getAlbums() async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().get(Urls.getAlbums);
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<AlbumsModel> albumsList = [];
        for (var e in (res.data as List)) {
          albumsList.add(AlbumsModel.fromJson(e));
        }

        return albumsList;
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

  static Future<List<AlbumsModel>?> getAlbum(int id) async {
    try {
      Response res = await DioConfig.inheritentce
          .createRequest()
          .get('${Urls.getAlbums}?userId=$id');
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<AlbumsModel> albumsList = [];
        for (var e in (res.data as List)) {
          albumsList.add(AlbumsModel.fromJson(e));
        }

        return albumsList;
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

  static Future<bool> addAlbums(AlbumsModel newAlbums) async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().post(Urls.addAlbums);
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

  static Future<bool> deleteAlbums(int id) async {
    try {
      Response res = await DioConfig.inheritentce
          .createRequest()
          .delete(Urls.deleteAlbums + id.toString());
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

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
