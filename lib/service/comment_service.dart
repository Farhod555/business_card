import 'package:business_card/config/dio_config.dart';
import 'package:business_card/models/comment_model.dart';
import 'package:business_card/service/post_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../network/api.dart';
import 'log_service.dart';

class GetCommentService {
  static final GetCommentService _inheritance = GetCommentService._init();

  static GetCommentService get inheritance => _inheritance;

  GetCommentService._init();

  static Future<List<CommentModel>?> getComment() async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().get(Urls.getComments);
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<CommentModel> commentList = [];
        for (var e in (res.data as List)) {
          commentList.add(CommentModel.fromJson(e));
        }

        return commentList;
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

  static Future<bool> addCommment(CommentModel newComment) async {
    try {
      Response res =
          await DioConfig.inheritentce.createRequest().post(Urls.addComments);
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

  static Future<bool> deleteComment(int id) async {
    try {
      Response res = await DioConfig.inheritentce
          .createRequest()
          .delete(Urls.deleteComments + id.toString());
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
