import 'package:business_card/pages/Album.dart';
import 'package:business_card/pages/Posts.dart';
import 'package:business_card/pages/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlbumPosts extends StatefulWidget {
  AlbumPosts({this.id, super.key});
  int? id;

  @override
  State<AlbumPosts> createState() => _AlbumPostsState();
}

class _AlbumPostsState extends State<AlbumPosts>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'AlbumPost',
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
          labelColor: Color.fromARGB(255, 255, 255, 255),
          controller: tabController,
          isScrollable: true,
          tabs: [
            Tab(
              text: 'Posts',
            ),
            Tab(
              text: 'Albums',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Posts(id: widget.id),
          Album(
            id: widget.id,
          )
        ],
      ),
    );
  }
}
