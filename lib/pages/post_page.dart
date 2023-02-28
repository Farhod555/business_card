import 'package:business_card/items/post_item.dart';
import 'package:business_card/models/post_model.dart';
import 'package:flutter/material.dart';

import '../../service/post_service.dart';
import '../../service/utils_service.dart';

class PostPage extends StatefulWidget {
  PostPage({this.id, Key? key}) : super(key: key);
  int? id;
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    super.initState();
    GetPostService.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          "Posts",
          style: TextStyle(color: Colors.white),
        ),
      ),
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
            } else {
              return const Center(
                child: Text('No data'),
              );
            }
          },
        ),
      ),
    );
  }
}
