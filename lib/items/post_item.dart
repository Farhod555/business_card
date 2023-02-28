import 'package:business_card/service/post_service.dart';
import 'package:flutter/material.dart';
import '../../../service/utils_service.dart';
import '../models/post_model.dart';

Widget postItem(BuildContext context, PostModel post) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        post.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              post.body,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black38),
            ),
          ),
        ],
      ),
      const Divider(
        thickness: 3,
      )
    ],
  );
}
