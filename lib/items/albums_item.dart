import 'package:business_card/models/albums_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget albumsItem(BuildContext context, AlbumsModel albums) {
  return SizedBox(
    height: 100,
    child: Column(
      children: [
        Row(
          children: [
            Text(
              '${albums.id}',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              albums.title,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0)),
            )),
          ],
        )
      ],
    ),
  );
}
