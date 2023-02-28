import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../items/albums_item.dart';
import '../service/albums_service.dart';

class Album extends StatefulWidget {
  Album({this.id, Key? key}) : super(key: key);
  int? id;
  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
          future: GetAlbumsService.getAlbum(widget.id!),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: albumsItem(context, snapshot.data![index]),
                  );
                },
              );
            }
            return const Center(
              child: Text('No data'),
            );
          },
        ),
      ),
    );
  }
}
