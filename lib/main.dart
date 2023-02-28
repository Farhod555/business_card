import 'package:business_card/mainView.dart';
import 'package:business_card/pages/albums_page.dart';
import 'package:business_card/pages/comment_page.dart';
import 'package:business_card/pages/post_album_post.dart';
import 'package:business_card/pages/user_detail_page.dart';
import 'package:business_card/pages/photos_page.dart';
import 'package:business_card/pages/post_page.dart';
import 'package:business_card/pages/user_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainView(),
      routes: {
        '/UserPage': (context) => const UserPage(),
        '/DetailPage': (context) => const DetailPage(),
        '/PostPage': (context) => PostPage(),
        '/CommentPage': (context) => const CommentPage(),
        '/PhotosPage': (context) => const PhotosPage(),
        '/AlbumsPage': (context) => AlbumsPage(),
      },
    );
  }
}
