import 'package:business_card/items/albums_item.dart';
import 'package:business_card/models/albums_model.dart';
import 'package:business_card/service/albums_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlbumsPage extends StatefulWidget {
  AlbumsPage({this.id, Key? key}) : super(key: key);
  int? id;
  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Albums',
          style: TextStyle(color: Colors.white),
        ),
      ),
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
