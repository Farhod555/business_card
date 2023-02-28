import 'package:business_card/models/comment_model.dart';
import 'package:business_card/service/comment_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/utils_service.dart';

Widget commentItem(
  BuildContext context,
  CommentModel comment,
) {
  return SizedBox(
    height: 200,
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.27,
              child: Text(
                comment.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Text(
              '${comment.email}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.blue,
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              comment.body,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black26,
              ),
            )),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    ),
  );
}
