import 'package:business_card/items/post_item.dart';
import 'package:business_card/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../service/post_service.dart';

class Posts extends StatefulWidget {
  Posts({this.id, Key? key}) : super(key: key);
  int? id;
  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FutureBuilder(
                future: GetPostService.getPost(widget.id!),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10),
                            child: postItem(context, snapshot.data![i]),
                          );
                        });
                  }
                  return Center(
                    child: Text('No data'),
                  );
                })));
  }
}
